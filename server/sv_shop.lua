ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

----------------- Events 

-- Cash

RegisterNetEvent("Shop:SJn3KzqXiEE1XBUSzkHfA1GZFVSL4fMmaeA2ox0E")
AddEventHandler("Shop:SJn3KzqXiEE1XBUSzkHfA1GZFVSL4fMmaeA2ox0E", function(item,price)  
    local _src = source
    local _item = item 
    local _price = price
    local xPlayer = ESX.GetPlayerFromId(_src)

    if xPlayer.getAccount('money') >= _price then 
        xPlayer.removeMoney(_price)
        xPlayer.addInventoryItem(_item, 1)
        TriggerClientEvent('esx:showNotification', _src, "~g~Achats~w~ effectué !")
    else
        TriggerClientEvent('esx:showNotification', _src, "Vous n'avez assez ~r~d\'argent")
    end
end)

-- Credit Card 

RegisterNetEvent("Shop:OuDkFWatc20XyeXHbLqQClKbRdNxLL5j6agc36fC")
AddEventHandler("Shop:OuDkFWatc20XyeXHbLqQClKbRdNxLL5j6agc36fC", function(item,price,fees)  
    local _src = source
    local _item = item 
    local _price = price
    local _fees = fees
    local _lastPay = _price + _fees
    local xPlayer = ESX.GetPlayerFromId(_src)

    if xPlayer.getAccount('bank') >= _price then 
        TriggerClientEvent('esx:showNotification', _src, "Verification du solde bancaire !")
        Wait(2000)
        if if xPlayer.getAccount('bank') >= _lastPay then
            xPlayer.removeMoney(_lastPay)
            xPlayer.addInventoryItem(_item, 1)
            TriggerClientEvent('esx:showNotification', _src, "Carte Bancaire accepter !")
        else
            TriggerClientEvent('esx:showNotification', _src, "Carte Bancaire refuser !")
        end
    end
end)