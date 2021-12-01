Shop = {}

Shop.Principal = {
    Zones = {
        {x = 373.875,   y = 325.896,  z = 103.566},
        {x = 2557.458,  y = 382.282,  z = 108.622},
        {x = -3038.939, y = 585.954,  z = 7.908},
        {x = -3241.927, y = 1001.462, z = 12.830},
        {x = 547.431,   y = 2671.710, z = 42.156},
        {x = 1961.464,  y = 3740.672, z = 32.343},
        {x = 2678.916,  y = 3280.671, z = 55.241},
        {x = 1729.216,  y = 6414.131, z = 35.037},
        {x = 1135.808,  y = -982.281,  z = 46.415},
        {x = -1222.915, y = -906.983,  z = 12.326},
        {x = -1487.553, y = -379.107,  z = 40.163},
        {x = -2968.243, y = 390.910,   z = 15.043},
        {x = 1166.024,  y = 2708.930,  z = 38.157},
        {x = 1392.562,  y = 3604.684,  z = 34.980},
        {x = -48.519,   y = -1757.514, z = 29.421},
        {x = 1163.373,  y = -323.801,  z = 69.205},
        {x = -707.501,  y = -914.260,  z = 19.215},
        {x = -1820.523, y = 792.518,   z = 138.118},
        {x = 1698.388,  y = 4924.404,  z = 42.063},
        {x = 25.82,  y = -1345.22,  z = 29.5}
    }
}

------------------------ MENU ------------------------

--- Nourriture ---

Shop.Bread = {
    Active = true,
    price = 1,
    item = 'bread',
    fees = 0.1 -- Les tax sont juste avec carte bancaire
}

Shop.Burger = {
    Active = true,
    price = 20,
    item = 'burger',
    fees = 5
}

Shop.Choco = {
    Active = true,
    price = 12,
    item = 'chocolat',
    fees = 4
}


--- Liquide

Shop.Water = {
    Active = true,
    price = 5,
    item = 'water',
    fees = 1
}

Shop.Coca = {
    Active = true,
    price = 7,
    item = 'Coca',
    fees = 2 -- Les tax
}


--- Technology ---

Shop.Phone = {
    Active = true,
    price = 300,
    item = 'phone', -- here put the item name, NOT VALUE !!
    fees = 65 -- les tax
}

Shop.GPS = {
    Active = true, -- In the menu or not
    price = 25,
    item = 'phone', -- here put the item name, NOT VALUE !!
    fees = 10 -- les tax
}


------ Other ----

Shop.Cigarette = {
    Active = true,
    price = 12,
    item = 'cigarette',
    fees = 5 
}     

Shop.Wine = {
    Active = true,
    price = 25,
    item = 'vin',
    fees = 9
}

---------------------------------

Shop.Marker = {
    Active = true,
    type = 22,
    drawdistance = 100,
    color = {r = 190, g = 190, b = 190},
    size = {x = 0.4, y = 0.4, z = 0.4}
}