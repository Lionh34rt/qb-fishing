fx_version 'cerulean'
game 'gta5'

description 'QB-Fishing'
version '1.0.0'

dependencies {
    'PolyZone',
    'qb-target'
}

shared_scripts {
    'shared/sh_config.lua'
}

client_scripts {
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/ComboZone.lua',
    'client/cl_main.lua',
    'client/cl_sale.lua'
}

server_scripts {
    'server/sv_main.lua',
    'server/sv_sale.lua'
}
