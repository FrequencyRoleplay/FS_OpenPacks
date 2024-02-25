-- Example client-side code for showing a message when using an item
RegisterNetEvent('openpacks:client:ShowItemUsedMessage')
AddEventHandler('openpacks:client:ShowItemUsedMessage', function(itemName, givenItemName, amount)
    local message = string.format("You used a %s and received %d %s.", itemName, amount, givenItemName)
    TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, message)
end)
