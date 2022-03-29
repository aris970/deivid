--------------------------------------------------------------------------------------------------------------
------------First off, many thanks to @anders for help with the majority of this script. ---------------------
------------Also shout out to @setro for helping understand pNotify better.              ---------------------
--------------------------------------------------------------------------------------------------------------
------------To configure: Add/replace your own coords in the sectiong directly below.    ---------------------
------------        Goto LINE 90 and change "50" to your desired SafeZone Radius.        ---------------------
------------        Goto LINE 130 to edit the Marker( Holographic circle.)               ---------------------
--------------------------------------------------------------------------------------------------------------
-- Place your own coords here!
local zones = {
	{ ['x'] = 225.18, ['y'] = -787.21, ['z'] = 29.87}, -- garage
	--{ ['x'] = 441.3, ['y'] = -982.84, ['z'] = 30.69}, -- PD
	{ ['x'] = -213.88, ['y'] = -1321.63, ['z'] = 30.89}, -- Benny
	{ ['x'] = 548.36, ['y'] = -175.06, ['z'] = 54.49}, -- mechanice ls
	{ ['x'] = -550.73, ['y'] = -193.82, ['z'] = 38.22}, --Palast
	{ ['x'] = 966.03, ['y'] = 50.93, ['z'] = 75}, --Casino Bar
	{ ['x'] = 934.53, ['y'] = 10.35, ['z'] = 75.49}, --Casino Bar 2
	{ ['x'] = 965.68, ['y'] = 54.87, ['z'] = 74.99}, --Casino Bar
	{ ['x'] = 973.95, ['y'] = 68, ['z'] = 75.74}, --Casino Automaten
	{ ['x'] = 989.53, ['y'] = 59.32, ['z'] = 75.49}, --Casino Tische
	{ ['x'] = 944.63, ['y'] = 65.47, ['z'] = 75.99}, --Casino Tische 2
	{ ['x'] = 922.05, ['y'] = 48.4, ['z'] = 81.09}, --Casino Eingang
	{ ['x'] = 968.84, ['y'] = 48.43, ['z'] = 80.96}, --Casino Parkhaus
	{ ['x'] = 958.62, ['y'] = 41.9, ['z'] = 75.74}, --Casino Foyer Treppen
	--{ ['x'] = 623.95, ['y'] = -232.38, ['z'] = 38.05}, --Juwelier
	{ ['x'] = 277.04, ['y'] = -971.54, ['z'] = 29.43}, --MCs
	--{ ['x'] = -35.17, ['y'] = -1101.79, ['z'] = 26.42}, --Autohaus
	{ ['x'] = 309.67, ['y'] = -592.08, ['z'] = 43.28}, -- Krankenhaus
	{ ['x'] = -1191.54, ['y'] = -889.42, ['z'] = 14}, -- Burger Shot
	{ ['x'] = -1385.27, ['y'] = -620.14, ['z'] = 30.82}, --Tanz Club
	{ ['x'] = -1724.96, ['y'] = -197.6, ['z'] = 58}, -- Friedhof
	{ ['x'] = 1098.38, ['y'] = -2001,04, ['z'] = 30.32}, --Gold gießerei
	{ ['x'] = -1001.49, ['y'] = 4847.84, ['z'] = 275}, -- Gold Exchange
	{ ['x'] = 681.74, ['y'] = 568.67, ['z'] = 130.46}, -- Bühne Bowl
	{ ['x'] = 199.61, ['y'] = 1166.54, ['z'] = 227}, -- Bühne 2
}

local notifIn = false
local notifOut = false
local closestZone = 1


--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-------                              Creating Blips at the locations. 							--------------
-------You can comment out this section if you dont want any blips showing the zones on the map.--------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--[[
Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	for i = 1, #zones, 1 do
		local szBlip = AddBlipForCoord(zones[i].x, zones[i].y, zones[i].z)
		SetBlipAsShortRange(szBlip, true)
		SetBlipColour(szBlip, 2)  --Change the blip color: https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
		SetBlipSprite(szBlip, 398) -- Change the blip itself: https://marekkraus.sk/gtav/blips/list.html
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("SAFE ZONE") -- What it will say when you hover over the blip on your map.
		EndTextCommandSetBlipName(szBlip)
	end
end)]]--

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
----------------   Getting your distance from any one of the locations  --------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		local playerPed = GetPlayerPed(-1)
		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		local minDistance = 100000
		for i = 1, #zones, 1 do
			dist = Vdist(zones[i].x, zones[i].y, zones[i].z, x, y, z)
			if dist < minDistance then
				minDistance = dist
				closestZone = i
			end
		end
		Citizen.Wait(15000)
	end
end)

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
---------   Setting of friendly fire on and off, disabling your weapons, and sending pNoty   -----------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while not NetworkIsPlayerActive(PlayerId()) do
		Citizen.Wait(0)
	end
	
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(player, true))
		local dist = Vdist(zones[closestZone].x, zones[closestZone].y, zones[closestZone].z, x, y, z)
	
		if dist <= 38.0 then  ------------------------------------------------------------------------------ Here you can change the RADIUS of the Safe Zone. Remember, whatever you put here will DOUBLE because 
			if not notifIn then																			  -- it is a sphere. So 50 will actually result in a diameter of 100. I assume it is meters. No clue to be honest.
				NetworkSetFriendlyFireOption(false)
				ClearPlayerWantedLevel(PlayerId())
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true)
				--[[TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You are in a SafeZone</b>",
					type = "success",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})]]--
				exports['mythic_notify']:SendAlert("inform", 'Du bist in einer SafeZone')
				notifIn = true
				notifOut = false
			end
		else
			if not notifOut then
				NetworkSetFriendlyFireOption(true)
				--[[TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You are in NO LONGER a SafeZone</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})]]--
				exports['mythic_notify']:SendAlert("inform", 'Du bist NICHT mehr in einer SafeZone')
				notifOut = true
				notifIn = false
			end
		end
		if notifIn then
		DisableControlAction(2, 37, true) -- disable weapon wheel (Tab)
		DisablePlayerFiring(player,true) -- Disables firing all together if they somehow bypass inzone Mouse Disable
      	DisableControlAction(0, 106, true) -- Disable in-game mouse controls
			if IsDisabledControlJustPressed(2, 37) then --if Tab is pressed, send error message
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- if tab is pressed it will set them to unarmed (this is to cover the vehicle glitch until I sort that all out)
				--[[TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You can not use weapons in a Safe Zone</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})]]--
				exports['mythic_notify']:SendAlert("inform", 'Du kannst Waffen in einer Safe Zone nicht nutzen.')
			end
			if IsDisabledControlJustPressed(0, 106) then --if LeftClick is pressed, send error message
				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- If they click it will set them to unarmed
				--[[TriggerEvent("pNotify:SendNotification",{
					text = "<b style='color:#1E90FF'>You can not do that in a Safe Zone</b>",
					type = "error",
					timeout = (3000),
					layout = "bottomcenter",
					queue = "global"
				})]]--
				exports['mythic_notify']:SendAlert("inform", 'Du kannst das nicht in einer SafeZone tun.')
				
			end
		end
		--[[ Comment out lines 142 - 145 if you dont want a marker.
	 	if DoesEntityExist(player) then	      --The -1.0001 will place it on the ground flush		-- SIZING CIRCLE |  x    y    z | R   G    B   alpha| *more alpha more transparent*
	 		DrawMarker(1, zones[closestZone].x, zones[closestZone].y, zones[closestZone].z-1.0001, 0, 0, 0, 0, 0, 0, 100.0, 100.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0) -- heres what all these numbers are. Honestly you dont really need to mess with any other than what isnt 0.
	 		--DrawMarker(type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19(LEAVE AS 2), BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts)
	 	end]]--
	end
end)