
-- target

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("BurgerShotDuty", vector3(-1188.76, -901.21, 13.97), 1.4, 0.2, {
		name = "BurgerShotDuty",
		heading = 35,
		debugPoly = false,
		minZ=12.0,
		maxZ=18.0,
	}, {
		options = {
		    {  
			event = "qb-burgershot:DutyB",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
		    },
		},
		distance = 1.5
	})

		exports['qb-target']:AddBoxZone("burger_tray_1", vector3(-1193.52, -895.26, 13.97), 7.6, 1.0, {
			name = "burger_tray_1",
			heading = 35.0,
			debugPoly = false,
            minZ=10.37,
            maxZ=14.37,
		}, {
			options = {
			    {
				event = "qb-burgershot:Tray1",
				icon = "far fa-clipboard",
				label = "Tray",
			    },
			},
			distance = 1.5
		})

	exports['qb-target']:AddBoxZone("burgershotcooker", vector3(-1198.32, -895.14, 13.97), 1.6, 1.0, {
		name="burgershotcooker",
		heading=305,
		debugPoly=false,
        minZ=10.17,
        maxZ=14.17,
	}, {
		options = {
			{
				event = "qb-burgershot:PattyFry",
				icon = "fas fa-hamburger",
				label = "Burger Cook Station",
			},
		},
		distance = 1.5
	})
		exports['qb-target']:AddBoxZone("burgershotfryer", vector3(-1200.97, -896.73, 13.97), 1.8, 1.0, {
		name="burgershotfryer",
		heading=304,
		debugPoly=false,
        minZ=10.17,
        maxZ=14.17,
		}, {
		    options = {
			{
			    event = "qb-burgershot:Fries",
			    icon = "fas fa-box",
			    label = "Make Fries",
			},
		    },
		    distance = 1.5
		})


	exports['qb-target']:AddBoxZone("burgershotdrinks", vector3(-1196.7, -895.08, 13.97), 2.2, 0.8, {
	    name="burgershotdrinks",
	    heading=35,
	    debugPoly=false,
        minZ=10.97,
        maxZ=14.97,
	    }, {
		options = {
		    {
			event = "nh-context:DrinkMenu",
			icon = "fas fa-filter",
			label = "Make Some Drinks",
		    },
		},
		distance = 1.5
	    })

         exports['qb-target']:AddBoxZone("burgerfridge", vector3(-1201.38, -901.66, 13.97), 4.0, 1.2, {
            name="burgerfridge",
            heading=35,
            debugPoly=false,
            minZ=11.17,
            maxZ=15.17,
        }, {
                options = {
                    {
                        event = "nh-context:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Order Ingredients!",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("burgershotdisplay", vector3(-1195.34, -897.5, 13.97), 3.4, 1.2, {
            name="burgershotdisplay",
            heading=34,
            debugPoly=false,
            minZ=10.97,
            maxZ=14.97,
        }, {
                options = {
                    {
                        event = "qb-burgershot:Storage",
                        icon = "fas fa-box",
                        label = "Storage",
                    },
                },
                distance = 1.5
            })


        exports['qb-target']:AddBoxZone("craftburger", vector3(-1197.44, -898.39, 13.97), 3.4, 1.0, {
            name="craftburger",
            heading=304,
            debugPoly=false,
            minZ=10.37,
            maxZ=14.37,
        }, {
                options = {
                    {
                        event = "nh-context:Burgers",
                        icon = "fas fa-cheeseburger",
                        label = "Burger Work Station",
                    },
                },
                distance = 1.5
            })
    --BurgerShot Customers
    exports['qb-target']:AddBoxZone("burgershotcustomer1", vector3(-1193.29, -882.46, 13.97), 1.6, 2.4, {
        name="burgershotcustomer1",
        heading=35,
        debugPoly=false,
        minZ=10.4,
        maxZ=14.4,
            }, {
                    options = {
                        {
                            event = "qb-BurgerShot:BurgerShotCustomer1",
                            icon = "fas fa-utensils",
                            label = "I want a Heart Stopper",
                        },
                    },
                    distance = 2.5
        })
        exports['qb-target']:AddBoxZone("burgershotcustomer2", vector3(-1191.72, -886.78, 14.0), 2.7, 2.2, {
        name="burgershotcustomer2",
        heading=305,
        debugPoly=false,
        minZ=10.4,
        maxZ=14.4,
            }, {
                    options = {
                        {
                            event = "qb-BurgerShot:BurgerShotCustomer2",
                            icon = "fas fa-utensils",
                            label = "I want a Meat Free Burger",
                        },
                    },
                    distance = 2.5
        })
        exports['qb-target']:AddBoxZone("burgershotcustomer3", vector3(-1188.96, -880.27, 14.0), 2.4, 2.4, {
            name="burgershotcustomer3",
            heading=35,
            debugPoly=false,
            minZ=10.4,
            maxZ=14.4,
                }, {
                        options = {
                            {
                                event = "qb-BurgerShot:BurgerShotCustomer3",
                                icon = "fas fa-utensils",
                                label = "I want a Bleeder Burger",
                            },
                        },
                        distance = 2.5
            })
         exports['qb-target']:AddBoxZone("burgershotcustomer4", vector3(-1186.96, -889.72, 13.97), 2.4, 1.6, {
            name="burgershotcustomer4",
            heading=305,
            debugPoly=false,
            minZ=10.4,
            maxZ=14.4,
                }, {
                        options = {
                            {
                                event = "qb-BurgerShot:BurgerShotCustomer4",
                                icon = "fas fa-utensils",
                                label = "I want a Money Shot Burger",
                            },
                        },
                        distance = 2.5
            })
            exports['qb-target']:AddBoxZone("burgershotcustomer5", vector3(-1189.1, -891.17, 14.0), 2.4, 2.4, {
            name="burgershotcustomer5",
            heading=305,
            debugPoly=false,
            minZ=10.4,
            maxZ=14.4,
                }, {
                        options = {
                            {
                                event = "qb-BurgerShot:BurgerShotCustomer5",
                                icon = "fas fa-utensils",
                                label = "I want a Torpedo Burger",
                            },
                        },
                        distance = 2.5
            })
         exports['qb-target']:AddBoxZone("burgershotcustomer6", vector3(-1188.66, -896.01, 13.97), 1.6, 2.6, {
            name="burgershotcustomer6",
            heading=35,
            debugPoly=false,
            minZ=10.4,
            maxZ=14.4,
                }, {
                        options = {
                            {
                                event = "qb-BurgerShot:BurgerShotCustomer6",
                                icon = "fas fa-utensils",
                                label = "I want a MURDER MEAL!!",
                            },
                        },
                        distance = 2.5
            })
end)


-- NH - Context --

RegisterNetEvent('nh-context:Burgers', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Available Burgers |",
            txt = "",
        },
        {
            id = 1,
            header = "• Moneyshot Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershot:MoneyShot"
            }
        },
        {
            id = 2,
            header = "• Meat Free Burger",
            txt = "Bun , Tomato , Lettuce",
            params = {
                event = "qb-burgershot:MeatFree"
            }
        },
        {
            id = 3,
            header = "• Bleeder Burger",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershot:BleederBurger"
            }
        },
        {
            id = 4,
            header = "• The Heart Stopper",
            txt = "Bun , Cooked Patty , Tomato , Lettuce",
            params = {
                event = "qb-burgershot:HeartStopper"
            }
        },
        {
            id = 5,
            header = "• Torpedo Roll",
            txt = "Bun , Cooked Meat",
            params = {
                event = "qb-burgershot:Torpedo"
            }
        },
        {
            id = 6,
            header = "• Murder Meal",
            txt = "The Heart Stopper, Fries and SoftDrink",
            params = {
                event = "qb-burgershot:CreateMurderMeal"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)


RegisterNetEvent('nh-context:OrderMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Fridge |",
            txt = "",
        },
        {
            id = 1,
            header = "• Order Items",
            txt = "Order New Ingredients!",
            params = {
                event = "qb-burgershot:shop"
            }
        },
        {
            id = 2,
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-burgershot:Storage2"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)

RegisterNetEvent('nh-context:DarkMarketBS', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Illegal Items |",
            txt = "",
        },
        {
            id = 1,
            header = "• Spray Paint Thinner ",
            txt = "Cost : $4000 ",
            params = {
                event = "qb-burgershot:MethProducts1"
            }
        },
        {
            id = 2,
            header = "• Gallon of Paint ",
            txt = "Cost : $9000 ",
            params = {
                event = "qb-burgershot:MethProducts2"
            }
        },
        {
            id = 3,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)


RegisterNetEvent('nh-context:DrinkMenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 0,
            header = "| Drink Menu |",
            txt = "",
        },
        {
            id = 1,
            header = "• Soft Drink",
            txt = "Soda Syrup",
            params = {
                event = "qb-burgershot:SoftDrink"
            }
        },
        {
            id = 2,
            header = "• Milkshake",
            txt = "Milkshake Formula",
            params = {
                event = "qb-burgershot:mShake"
            }
        },
        {
            id = 3,
            header = "• Small Cup of Lean",
            txt = "Soda Syrup, NyQuil",
            params = {
                event = "qb-burgershot:leancup1"
            }
        },
        {
            id = 4,
            header = "• Big Cup of Lean",
            txt = "Soda Syrup, Nyquil, Spray Paint",
            params = {
                event = "qb-burgershot:leancup2"
            }
        },
        {
            id = 5,
            header = "• Bottle of Lean",
            txt = "Soda Syrup, NyQuil, Gallon of Paint",
            params = {
                event = "qb-burgershot:leancup3"
            }
        },
        {
            id = 6,
            header = "Close (ESC)",
            txt = "",
        },
    })
end)


-- Till Stuff --
RegisterNetEvent("qb-burgershot:bill")
AddEventHandler("qb-burgershot:bill", function()
    local bill = exports["nh-keyboard"]:KeyboardInput({
        header = "Create Receipt",
        rows = {
            {
                id = 0,
                txt = "Server ID"
            },
            {
                id = 1,
                txt = "Amount"
            }
        }
    })
    if bill ~= nil then
        if bill[1].input == nil or bill[2].input == nil then 
            return 
        end
        TriggerServerEvent("qb-burgershot:bill:player", bill[1].input, bill[2].input)
    end
end)

