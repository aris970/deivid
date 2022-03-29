ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
       Citizen.Wait(0)
    end

    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        if ESX.PlayerData.job.name == "police" or ESX.PlayerData.job.name == "ambulance"  or ESX.PlayerData.job.name == "admin"then
                exports["rp-radio"]:GivePlayerAccessToFrequencies(911, 912)
           
        else
           exports["rp-radio"]:RemovePlayerAccessToFrequencies(911, 912)
           
        end
   end
end)

--BBRP ID
Citizen.CreateThread(function()
    Wait(50)
    while true do
        miid(0.815, 1.405, 1.28,1.0,0.50, "~b~ID:~r~  ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)
        Citizen.Wait(1)
    end
end)
function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
--User Id Over head --
local showPlayerBlips = false
local ignorePlayerNameDistance = false
local playerNamesDist = 7
local displayIDHeight = 1 --Height of ID above players head(starts at center body mass)
--Set Default Values for Colors
local red = 255
local green = 255
local blue = 255

function DrawText3D(x,y,z, text) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.0*scale, 0.55*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(red, green, blue, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
		World3dToScreen2d(x,y,z, 0) --Added Here
        DrawText(_x,_y)
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 303) then
            for i=0,99 do
                N_0x31698aa80e0223f8(i)
            end
            for id = 0, 255 do
                if  ((NetworkIsPlayerActive( id )) and GetPlayerPed( id ) ~= GetPlayerPed( -1 )) then
                ped = GetPlayerPed( id )
                blip = GetBlipFromEntity( ped ) 
 
                x1, y1, z1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), true ) )
                x2, y2, z2 = table.unpack( GetEntityCoords( GetPlayerPed( id ), true ) )
                distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))

                if(ignorePlayerNameDistance) then
					if NetworkIsPlayerTalking(id) then
						red = 0
						green = 0
						blue = 255
						DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
					else
						red = 255
						green = 255
						blue = 255
						DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
					end
                end

                if ((distance < playerNamesDist)) then
                    if not (ignorePlayerNameDistance) then
						if NetworkIsPlayerTalking(id) then
							red = 0
							green = 0
							blue = 255
							DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
						else
							red = 255
							green = 255
							blue = 255
							DrawText3D(x2, y2, z2 + displayIDHeight, GetPlayerServerId(id))
						end
                    end
                end  
            end
        end
        elseif not IsControlPressed(1, 303) then
            DrawText3D(0, 0, 0, "")
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		local t = {h = GetClockHours(), m = GetClockMinutes(), s = GetClockSeconds()}
		drawTxt(string.format("      ||   %02d:%02d", t.h, t.m), 0.227, 0.913, 0.405, 255, 255, 255, 255, 1)
	end
end)

function drawTxt(text, x, y, scale, r, g, b, a, outline)
	SetTextFont(0)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	if(outline)then
		SetTextOutline()
	end
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end
--[[restart ShowOwnID]]--

