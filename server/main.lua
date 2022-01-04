RegisterServerEvent("qb-burgershot:bill:player")
AddEventHandler("qb-burgershot:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                       if Config.SQL == 'oxmysql' then
                        exports.oxmysql:insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        else
                          exports.ghmattimysql:execute('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (@citizenid, @amount, @society, @sender)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname
                           })
                       end
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:ingredientBurger', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local lettuce = Ply.Functions.GetItemByName("burger-lettuce")
    local meat = Ply.Functions.GetItemByName("burger-meat")
    local bun = Ply.Functions.GetItemByName("burger-bun")
    local tomato = Ply.Functions.GetItemByName("burger-tomato")
    if lettuce ~= nil and meat ~= nil and bun ~= nil and tomato ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:ingredientTorpedo', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local meat = Ply.Functions.GetItemByName("burger-meat")
    local bun = Ply.Functions.GetItemByName("burger-bun")
    if meat ~= nil and bun ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:ingredientMeatfree', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bun = Ply.Functions.GetItemByName("burger-bun")
    local tomato = Ply.Functions.GetItemByName("burger-tomato")
    local lettuce = Ply.Functions.GetItemByName("burger-lettuce")
    if bun ~= nil and lettuce ~= nil and tomato ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:ingredientMurderMeal', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local fries = Ply.Functions.GetItemByName("burger-fries")
    local heartstopper = Ply.Functions.GetItemByName("burger-heartstopper")
    local software = Ply.Functions.GetItemByName("burger-softdrink")
    if fries ~= nil and heartstopper ~= nil and software ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:leancup1', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local sodasyrup = Ply.Functions.GetItemByName("burger-sodasyrup")
    local nyquil = Ply.Functions.GetItemByName("bsnyquil")
    if sodasyrup ~= nil and nyquil ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback("qb-blackmarket:server:get:MethProducts1", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = 4000
    local bankMoney = Player.PlayerData.money["cash"]
    if bankMoney >= price then
        Player.Functions.RemoveMoney('cash', price, "Item Purchased")
        cb(bankMoney)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You Dont Have Enough Cash', 'error')
        cb(bankMoney)
    end
end)

QBCore.Functions.CreateCallback("qb-blackmarket:server:get:MethProducts2", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local price = 9000
    local bankMoney = Player.PlayerData.money["cash"]
    if bankMoney >= price then
        Player.Functions.RemoveMoney('cash', price, "Item Purchased")
        cb(bankMoney)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You Dont Have Enough Cash', 'error')
        cb(bankMoney)
    end
end)

--burgershot customers
QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer1', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local heartstopper = Ply.Functions.GetItemByName("burger-heartstopper")
    if heartstopper ~= nil then
    if heartstopper.amount >= Config.CustomerCost1 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer1', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local heartstopper = Ply.Functions.GetItemByName("burger-heartstopper")
    if heartstopper ~= nil then
    if heartstopper.amount >= Config.CustomerCost1 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer2', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local meatfree = Ply.Functions.GetItemByName("burger-meatfree")
    if meatfree ~= nil then
    if meatfree.amount >= Config.CustomerCost2 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer3', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bleeder = Ply.Functions.GetItemByName("burger-bleeder")
    if bleeder ~= nil then
    if bleeder.amount >= Config.CustomerCost3 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer4', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local moneyshot = Ply.Functions.GetItemByName("burger-moneyshot")
    if moneyshot ~= nil then
    if moneyshot.amount >= Config.CustomerCost4 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer5', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local torpedo = Ply.Functions.GetItemByName("burger-torpedo")
    if torpedo ~= nil then
    if torpedo.amount >= Config.CustomerCost5 then
        cb(true)
    else
        cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:BurgerShotCustomer6', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local murdermeal = Ply.Functions.GetItemByName("burger-murdermeal")
    if murdermeal ~= nil then
    if murdermeal.amount >= Config.CustomerCost6 then
        cb(true)
    else
        cb(false)
        end
    end
end)

--end
--triggermoney
RegisterNetEvent('qb-burgershot:bsc:collect1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
     local Reward = math.random(35,50)
    Player.Functions.AddMoney('cash', Reward, "paid")
end)

RegisterNetEvent('qb-burgershot:bsc:collect2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
     local Reward = math.random(65,120)
    Player.Functions.AddMoney('cash', Reward, "paid")
end)

--end

QBCore.Functions.CreateUseableItem("burger-murdermeal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-burgershot:MurderMeal", source, item.name)
end)
