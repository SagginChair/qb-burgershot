RegisterServerEvent("qb-burgershot:bill:player")
AddEventHandler("qb-burgershot:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'burgershot' then
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
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
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

QBCore.Functions.CreateCallback('qb-burgershot:server:get:leancup2', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local sodasyrup = Ply.Functions.GetItemByName("burger-sodasyrup")
    local nyquil = Ply.Functions.GetItemByName("bsnyquil")
    local spaint = Ply.Functions.GetItemByName("methspraypaint")
    if sodasyrup ~= nil and nyquil ~= nil and spaint ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-burgershot:server:get:leancup3', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local sodasyrup = Ply.Functions.GetItemByName("burger-sodasyrup")
    local nyquil = Ply.Functions.GetItemByName("bsnyquil")
    local gpaint = Ply.Functions.GetItemByName("methgallonpaint")
    if sodasyrup ~= nil and nyquil ~= nil and gpaint ~= nil then
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

QBCore.Functions.CreateUseableItem("burger-murdermeal", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent("qb-burgershot:MurderMeal", source, item.name)
end)
