Config = {}

Config.GaragePedLocations = {
    {coords = vector4(-1178.588, -891.9196, 13.799622, 302.58825)},
}

Config.SQL = 'oxmysql' --- oxmysql or ghmattisql

--if u are not using qb-target uncomment this.

-- Config.Locations = {
--     ["duty"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },    
--     ["tray1"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["tray2"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["tray3"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },  
--     ["pattycooker"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--     }, 
--     ["fryer"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     }, 
--     ["drinks"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--     },   
--     ["fridge"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },      
--     ["storage"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },
--     ["craftburger"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     },    
--     ["cashregister"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--         [2] = vector4(0 , 0 , 0, 0),
--         [3] = vector4(0 , 0 , 0, 0),
--         [4] = vector4(0 , 0 , 0, 0),
--     },   
--     ["garage"] = {
--         [1] = vector4(0 , 0 , 0, 0),
--     }, 
--  }


Config.Items = {
label = "Shop",
    slots = 8,
    items = {
        [1] = {
            name = "burger-bun",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "burger-raw",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "burger-tomato",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "burger-lettuce",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "burger-potato",
            price = 0,
            amount = 2,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "burger-mshakeformula",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "burger-sodasyrup",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "bsnyquil",
            price = 0,
            amount = 5,
            info = {},
            type = "item",
            slot = 8,
        },
    }
}

Config.BSIllegalCost1 = 4000
Config.BSIllegalCost2 = 9000

Config.CustomerCost1 = 1
Config.CustomerCost2 = 1
Config.CustomerCost3 = 1
Config.CustomerCost4 = 1
Config.CustomerCost5 = 1
Config.CustomerCost6 = 1

