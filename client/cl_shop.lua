ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local _ShopItem = {
    item = nil,
    price = nil,
    fees = nil
}

--------------------------

function OpenShop()
    local _Shop = RageUI.CreateMenu("Supérette", "Catalogue")
    local _ShopEat = RageUI.CreateSubMenu(_Shop, "Supérette", "La bouffe")
    local _ShopDrink = RageUI.CreateSubMenu(_Shop, "Supérette", "Liquide")  
    local _ShopTechnologie = RageUI.CreateSubMenu(_Shop, "Supérette", "Technologie")
    local _ShopOther = RageUI.CreateSubMenu(_Shop, "Supérette", "Technologie")
    local _ShopBuy = RageUI.CreateSubMenu(_Shop, "Supérette", "Technologie")
  
    RageUI.Visible(_Shop, not RageUI.Visible(_Shop))
  
    while _Shop do
        Citizen.Wait(0)
        local _ped = PlayerPedId()
        freeze = FreezeEntityPosition(_ped, false)
        RageUI.IsVisible(_Shop, true, true, true, function()
  
              RageUI.Separator("↓ ~p~Nourritures ~s~↓")
   
              RageUI.ButtonWithStyle("Solide", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
              end, _ShopEat)
  
              RageUI.ButtonWithStyle("Liquide", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
              end, _ShopDrink)
  
              RageUI.Separator("↓ ~r~Technology ~s~↓")
  
              RageUI.ButtonWithStyle("Divers", nil,  {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
              end, _ShopTechnologie)
  
              RageUI.Separator("↓ ~y~Autre ~s~↓")
  
              RageUI.ButtonWithStyle("Autre", nil,  {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
              end, _ShopOther)
      end)

      ------------------------------ 

    RageUI.IsVisible(_ShopEat, true, true, true, function()
        if Shop.Bread.Active then 
            RageUI.Separator("↓ ~y~Pain ~s~↓")
            RageUI.ButtonWithStyle("Pain", nil,  {RightLabel = "~r~".. Shop.Bread.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Bread.item 
                    _ShopItem.price = Shop.Bread.price
                    _ShopItem.fees  = Shop.Bread.fees
                end
            end, _ShopBuy)
        end
        if Shop.Burger.Active then 
            RageUI.Separator("↓ ~y~Burger ~s~↓")
            RageUI.ButtonWithStyle("Burger", nil,  {RightLabel = "~r~".. Shop.Burger.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Burger.item 
                    _ShopItem.price = Shop.Burger.price
                    _ShopItem.fees  = Shop.Burger.fees
                end
            end, _ShopBuy)
        end
        if Shop.Choco.Active then 
            RageUI.Separator("↓ ~y~Chocolat ~s~↓")
            RageUI.ButtonWithStyle("Chocolat", nil,  {RightLabel = "~r~".. Shop.Choco.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Choco.item 
                    _ShopItem.price = Shop.Choco.price
                    _ShopItem.fees  = Shop.Choco.fees
                end
            end, _ShopBuy)
        end
    end)

    -------------------

    RageUI.IsVisible(_ShopTechnologie, true, true, true, function()
        if Shop.Phone.Active then 
            RageUI.Separator("↓ ~b~Phone~s~ ↓")
            RageUI.ButtonWithStyle("Phone", nil,  {RightLabel = "~r~".. Shop.Phone.price .. "$ ~s~→→"  }, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Phone.item 
                    _ShopItem.price = Shop.Phone.price
                    _ShopItem.fees = Shop.Phone.fees
                end
            end, _ShopBuy)
        end    

        if Shop.GPS.Active then 
            RageUI.Separator("↓ ~b~GPS~s~ ↓")
            RageUI.ButtonWithStyle("GPS", nil,  {RightLabel = "~r~".. Shop.GPS.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.GPS.item 
                    _ShopItem.price = Shop.GPS.price
                    _ShopItem.fees  = Shop.GPS.fees
                end
            end, _ShopBuy)
        end
    end)

    ----------------------

    RageUI.IsVisible(_ShopDrink, true, true, true, function()
        if Shop.Water.Active then 
            RageUI.Separator("↓ ~b~Eau~s~ ↓")
            RageUI.ButtonWithStyle("Eau", nil,  {RightLabel = "~r~".. Shop.Water.price .. "$ ~s~→→"  }, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Water.item 
                    _ShopItem.price = Shop.Water.price
                    _ShopItem.fees = Shop.Water.fees
                end
            end, _ShopBuy)
        end    

        if Shop.Coca.Active then 
            RageUI.Separator("↓ ~b~Coca~s~ ↓")
            RageUI.ButtonWithStyle("Coca", nil,  {RightLabel = "~r~".. Shop.Coca.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Coca.item 
                    _ShopItem.price = Shop.Coca.price
                    _ShopItem.fees  = Shop.Coca.fees
                end
            end, _ShopBuy)
        end
    end)

    ------------------- 

    RageUI.IsVisible(_ShopOther, true, true, true, function()
        if Shop.Cigarette.Active then 
            RageUI.Separator("↓ ~b~Cigarette~s~ ↓")
            RageUI.ButtonWithStyle("Cigarette", nil,  {RightLabel = "~r~".. Shop.Cigarette.price .. "$ ~s~→→"  }, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Cigarette.item 
                    _ShopItem.price = Shop.Cigarette.price
                    _ShopItem.fees = Shop.Cigarette.fees
                end
            end, _ShopBuy)
        end    

        if Shop.Wine.Active then 
            RageUI.Separator("↓ ~b~Alcohol~s~ ↓")
            RageUI.ButtonWithStyle("alcohol", nil,  {RightLabel = "~r~".. Shop.Wine.price .."$ ~s~→→"}, true, function(Hovered, Active, Selected)
                if Selected then
                    _ShopItem.item = Shop.Wine.item 
                    _ShopItem.price = Shop.Wine.price
                    _ShopItem.fees  = Shop.Wine.fees
                end
            end, _ShopBuy)
        end
    end)

    ----------------------------

    RageUI.IsVisible(_ShopBuy, true, true, true, function()
        RageUI.Separator("↓ $ ↓")
        RageUI.ButtonWithStyle("Payer avec especes", nil,  {RightLabel = "~r~".. _ShopItem.price .."$ ~s~→→ "  }, true, function(Hovered, Active, Selected)
            if Selected then 
                TriggerServerEvent("Shop:SJn3KzqXiEE1XBUSzkHfA1GZFVSL4fMmaeA2ox0E", _ShopItem.item, _ShopItem.price)
            end
        end)

        RageUI.Separator("↓ $ ↓")
        RageUI.ButtonWithStyle("Payer avec Carte Credit", nil,  {RightLabel = "~r~".. _ShopItem.price .."$ ~s~+~r~ ".. _ShopItem.fees .."$ ~s~→→ "   }, true, function(Hovered, Active, Selected)
            if Selected then 
                TriggerServerEvent("Shop:OuDkFWatc20XyeXHbLqQClKbRdNxLL5j6agc36fC", _ShopItem.item, _ShopItem.price, _ShopItem.fees)
            end
        end)
    end)

    if not RageUI.Visible(_Shop) and not RageUI.Visible(_ShopEat) and not RageUI.Visible(_ShopDrink) and not RageUI.Visible(_ShopTechnologie) and not RageUI.Visible(_ShopOther) and not RageUI.Visible(_ShopBuy) then
        _Shop = RMenu:DeleteType("Shop", true)
       end
    end
end


---------------------------------------------------------------------


-- Marker

if Shop.Marker.Active then  
    Citizen.CreateThread(function()
        while true do          
            for k in pairs(Shop.Principal.Zones) do
                local coords = GetEntityCoords(GetPlayerPed(-1))
                if(Shop.Marker.type ~= -1 and GetDistanceBetweenCoords(coords, Shop.Principal.Zones[k].x, Shop.Principal.Zones[k].y, Shop.Principal.Zones[k].z, true) < Shop.Marker.drawdistance) then
                    DrawMarker(Shop.Marker.type, Shop.Principal.Zones[k].x, Shop.Principal.Zones[k].y, Shop.Principal.Zones[k].z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Shop.Marker.size.x, Shop.Marker.size.y, Shop.Marker.size.z, 255, 0, 0, 100, false, true, 2, false, false, false, false)
                end   
            end
            Citizen.Wait(0)
        end
    end)
end

--- Blip

Citizen.CreateThread(function()
    for k, v in pairs(Shop.Principal.Zones) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(blip, 52)
        SetBlipScale (blip, 0.6)
        SetBlipColour(blip, 18)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName('Supérette')
        EndTextCommandSetBlipName(blip)
    end
end)   

-- Interaction 

Citizen.CreateThread(function()
    while true do
        local sleep = 500
            for k in pairs(Shop.Principal.Zones) do
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Shop.Principal.Zones[k].x, Shop.Principal.Zones[k].y, Shop.Principal.Zones[k].z)
                    if dist <= 1.0 then
                    sleep = 0
                    RageUI.Text({ message = "Appuyez sur [~b~E~s~] pour interagir avec Appu", time_display = 1 })
                    if IsControlJustPressed(1,51) then
                        OpenShop()
                    end
                end
            end
        Citizen.Wait(sleep)
    end
end)