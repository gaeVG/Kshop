fx_version 'adamant'

game 'gta5'

-- Rage UI

client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua"
}

-- Client

client_scripts {
    'client/cl_shop.lua'
}

server_scripts {
    '@es_extended/locale.lua',
	'client/sv_shop.lua'
}

shared_scripts {
	'config.lua'
}

