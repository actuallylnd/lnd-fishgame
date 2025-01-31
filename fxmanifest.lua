
fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0.0'

author 'lndd'
description 'Support: https://discord.gg/dEv6tm2epA'

shared_script {
    '@ox_lib/init.lua',
}

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/style.css',
    'web/script.js',
    'web/*.png'
}

client_scripts {
    'client.lua',
}
