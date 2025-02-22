fx_version 'cerulean'
game 'gta5'

author 'emyg'
description 'EMY/Shop Basit Araç Kiralama'
version '1.0.0'

shared_script 'config.lua'

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

dependencies {
    'qb-target',
    'qb-menu'
}
