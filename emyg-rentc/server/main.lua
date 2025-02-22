local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('emyg:server:payForVehicle', function(source, cb, price)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if xPlayer.Functions.RemoveMoney("cash", price) then
        cb(true)
    else
        cb(false)
    end
end)
