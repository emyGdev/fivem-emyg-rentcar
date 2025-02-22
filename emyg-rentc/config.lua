Config = {}

Config.RentalLocations = {
    {
        locationName = "Araç Kiralama", -- Blip ve Menu adı
        menuHeader = "✈️ Havalimanı Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(-1039.21, -2730.65, 20.21), -- NPC'nin konumu
        npcHeading = 250.27, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🚗 Blista", model = "blista", price = 3500}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚗 Cheburek", model = "Cheburek", price = 3000},
            {menuName = "🚗 Asea", model = "Asea", price = 2500},
            {menuName = "🛵 Faggio", model = "faggio", price = 1000}
        },
        vehicleSpawnCoords = vector3(-1035.33, -2729.42, 20.07), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 237.53, -- Aracın baktığı yön
        blip = {sprite = 225, color = 29, scale = 0.8} -- Blip ayarları
    },

    {
        locationName = "Araç Kiralama", -- Blip ve Menu adı
        menuHeader = "🚗 Motel Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(302.25, -190.36, 61.57), -- NPC'nin konumu
        npcHeading = 70.27, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🚗 Blista", model = "blista", price = 3500}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚗 Cheburek", model = "Cheburek", price = 3000},
            {menuName = "🚗 Asea", model = "Asea", price = 2500},
            {menuName = "🛵 Faggio", model = "faggio", price = 1000}
        },
        vehicleSpawnCoords = vector3(299.35, -196.97, 61.57), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 237.53, -- Aracın baktığı yön
        blip = {sprite = 225, color = 29, scale = 0.6} -- Blip ayarları
    },

    {
        locationName = "Araç Kiralama", -- Blip ve Menu adı
        menuHeader = "🚗 İskele Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(-1714.4, -1127.04, 13.16), -- NPC'nin konumu
        npcHeading = 50.27, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🚗 Blista", model = "blista", price = 3500}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚗 Cheburek", model = "Cheburek", price = 3000},
            {menuName = "🚗 Asea", model = "Asea", price = 2500},
            {menuName = "🛵 Faggio", model = "faggio", price = 1000}
        },
        vehicleSpawnCoords = vector3(-1715.99, -1122.01, 13.15), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 50.53, -- Aracın baktığı yön
        blip = {sprite = 225, color = 29, scale = 0.6} -- Blip ayarları
    },

    {
        locationName = "Araç Kiralama", -- Blip ve Menu adı
        menuHeader = "🚗 Blaine County Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(1993.16, 3778.27, 32.18), -- NPC'nin konumu
        npcHeading = 205.0, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🚗 Blista", model = "blista", price = 3500}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚗 Cheburek", model = "Cheburek", price = 3000},
            {menuName = "🚗 Asea", model = "Asea", price = 2500},
            {menuName = "🛵 Faggio", model = "faggio", price = 1000}
        },
        vehicleSpawnCoords = vector3(1988.46, 3777.85, 32.18), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 205.53, -- Aracın baktığı yön
        blip = {sprite = 225, color = 29, scale = 0.6} -- Blip ayarları
    },

    {
        locationName = "Araç Kiralama", -- Blip ve Menu adı
        menuHeader = "🚗 Paleto Bay Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(168.13, 6632.3, 31.53), -- NPC'nin konumu
        npcHeading = 205.0, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🚗 Blista", model = "blista", price = 3500}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚗 Cheburek", model = "Cheburek", price = 3000},
            {menuName = "🚗 Asea", model = "Asea", price = 2500},
            {menuName = "🛵 Faggio", model = "faggio", price = 1000}
        },
        vehicleSpawnCoords = vector3(175.97, 6624.07, 31.71), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 205.53, -- Aracın baktığı yön
        blip = {sprite = 225, color = 29, scale = 0.6} -- Blip ayarları
    },

    {
        locationName = "Tekne Kiralama", -- Blip ve Menu adı
        menuHeader = "☀️ Sahil Kiralama", -- Menüde gözükecek başlık
        npcCoords = vector3(-1517.72, -1276.53, 1.93), -- NPC'nin konumu
        npcHeading = 180.35, -- NPC'nin bakış açısı
        vehicles = {
            {menuName = "🛥️ Squalo", model = "squalo", price = 3000}, -- Menüde gözükecek isim ve araç modeli
            {menuName = "🚤 Jet Ski", model = "seashark", price = 1000}
        },
        vehicleSpawnCoords = vector3(-1553.95, -1285.3, -0.17), -- Aracın çıkacağı konum
        vehicleSpawnHeading = 124.14, -- Aracın baktığı yön
        blip = {sprite = 410, color = 29, scale = 0.8} -- Blip ayarları
    },
    
}
