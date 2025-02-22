local QBCore = exports['qb-core']:GetCoreObject()


function SpawnNPC(model, coords, heading)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(1)
    end

    local npc = CreatePed(4, model, coords.x, coords.y, coords.z - 1, heading, false, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    return npc
end

CreateThread(function()
    for _, rental in pairs(Config.RentalLocations) do

        local npcModel = GetHashKey("a_m_m_business_01")
        SpawnNPC(npcModel, rental.npcCoords, rental.npcHeading)

        if rental.blip then
            local blip = AddBlipForCoord(rental.npcCoords.x, rental.npcCoords.y, rental.npcCoords.z)
            SetBlipSprite(blip, rental.blip.sprite)
            SetBlipColour(blip, rental.blip.color)
            SetBlipScale(blip, rental.blip.scale)
            SetBlipAsShortRange(blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(rental.locationName)
            EndTextCommandSetBlipName(blip)
        end

        exports['qb-target']:AddBoxZone("rentalnpc_" .. _, rental.npcCoords, 1.0, 1.0, {
            name = "rentalnpc_" .. _,
            heading = rental.npcHeading,
            debugPoly = false,
        }, {
            options = {
                {
                    label = "Araç Kirala",
                    icon = "fas fa-car",
                    action = function()
                        OpenRentalMenu(rental)
                    end
                }
            },
            distance = 2.5
        })
    end
end)
--E_M_Y
function OpenRentalMenu(rental)
    local menuOptions = {
        {
            header = rental.menuHeader, 
            isMenuHeader = true 
        }
    }

    for _, vehicle in pairs(rental.vehicles) do
        table.insert(menuOptions, {
            header = vehicle.menuName, 
            txt = "Fiyat: $"..vehicle.price,
            params = {
                event = "emyg:client:rentVehicle",
                args = {
                    vehicleModel = vehicle.model,
                    price = vehicle.price,
                    spawnCoords = rental.vehicleSpawnCoords,
                    spawnHeading = rental.vehicleSpawnHeading 
                }
            }
        })
    end

    exports['qb-menu']:openMenu(menuOptions)
end

RegisterNetEvent('emyg:client:rentVehicle', function(data)
    local playerPed = PlayerPedId()
    local coords = data.spawnCoords
    local heading = data.spawnHeading
    local model = data.vehicleModel
    local price = data.price --Y_M_E

    QBCore.Functions.TriggerCallback('emyg:server:payForVehicle', function(success)
        if success then
 
            QBCore.Functions.SpawnVehicle(model, function(veh)
                SetEntityCoords(veh, coords.x, coords.y, coords.z)
                SetEntityHeading(veh, heading) 
                TaskWarpPedIntoVehicle(playerPed, veh, -1)
                TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(veh))
                TriggerEvent("QBCore:Notify", "Araç kiraladın!", "success")
            end)
        else
            TriggerEvent("QBCore:Notify", "Yeterli paran yok!", "error")
        end
    end, price)
end)
