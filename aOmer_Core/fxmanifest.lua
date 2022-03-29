fx_version 'cerulean'
game 'gta5'

this_is_a_map 'rrerr'

client_scripts {
    "@RageUI_Old/RMenu.lua",
    "@RageUI_Old/menu/RageUI.lua",
    "@RageUI_Old/menu/Menu.lua",
    "@RageUI_Old/menu/MenuController.lua",
    
    "@RageUI_Old/components/Audio.lua",
    "@RageUI_Old/components/Enum.lua",
    "@RageUI_Old/components/Keys.lua",
    "@RageUI_Old/components/Rectangle.lua",
    "@RageUI_Old/components/Sprite.lua",
    "@RageUI_Old/components/Text.lua",
    "@RageUI_Old/components/Visual.lua",
    
    "@RageUI_Old/menu/elements/ItemsBadge.lua",
    "@RageUI_Old/menu/elements/ItemsColour.lua",
    "@RageUI_Old/menu/elements/PanelColour.lua",
    
    "@RageUI_Old/menu/items/UIButton.lua",
    "@RageUI_Old/menu/items/UICheckBox.lua",
    "@RageUI_Old/menu/items/UIList.lua",
    "@RageUI_Old/menu/items/UISeparator.lua",
    "@RageUI_Old/menu/items/UISlider.lua",
    "@RageUI_Old/menu/items/UISliderHeritage.lua",
    "@RageUI_Old/menu/items/UISliderProgress.lua",
    
    "@RageUI_Old/menu/panels/UIColourPanel.lua",
    "@RageUI_Old/menu/panels/UIGridPanel.lua",
    "@RageUI_Old/menu/panels/UIPercentagePanel.lua",
    "@RageUI_Old/menu/panels/UIStatisticsPanel.lua",
    

}


client_scripts {
	"@NativeUILua_Reloaded/src/NativeUIReloaded.lua",
	'config.lua',
	'config/**.lua',
	'locale.lua',
	'client/**.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@async/async.lua',
	'config_server.lua',
	'config.lua',
	'config/**.lua',
	'server/**.lua'
}


server_scripts {

'@es_extended/locale.lua',
'locales/en.lua',
'config.lua'
}

client_scripts {
'@es_extended/locale.lua',
'locales/en.lua',
'config.lua'
}


ui_page 'ui/index.html'

files {
	'ui/index.html',

}

server_export "getCurrentGameType"
server_export "getCurrentMap"
server_export "changeGameType"
server_export "changeMap"
server_export "doesMapSupportGameType"
server_export "getMaps"
server_export "roundEnded"



lua54 'yes'
dependency '/assetpacks'