local QBCore = exports[Config.Core]:GetCoreObject()

for _, conversion in pairs(Config.ItemsToConvert) do
    QBCore.Functions.CreateUseableItem(conversion.usedItem, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)

        if Player.Functions.GetItemByName(item.name) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item.name], 'remove')
            Player.Functions.RemoveItem(item.name, 1)

            Player.Functions.AddItem(conversion.givenItem, conversion.amount)
            TriggerClientEvent('openpacks:client:ShowItemUsedMessage', src, item.name, conversion.givenItem, conversion.amount)
        end
    end)
end





