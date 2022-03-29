Citizen.CreateThread(function()
	for i = 1, 12 do
		Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
	end
end)

Citizen.CreateThread(function()
	while true do
        Wait(0)
        SetVehicleModelIsSuppressed(GetHashKey("blimp"), true)
        SetVehicleModelIsSuppressed(GetHashKey("blimp2"), true)
        SetVehicleModelIsSuppressed(GetHashKey("blimp3"), true)
        SetVehicleModelIsSuppressed(GetHashKey("lazer"), true)
        SetVehicleModelIsSuppressed(GetHashKey("rhino"), true)
    end
end)



local blips = {
     {title="Fahrzeug einparken", colour=1, id=473, x = 234.72, y= -751.96, z= 30.83},
     {title="Rathaus", colour=0, id=419, x = -523.94, y = -240.38, z = 36.08}
 }      
Citizen.CreateThread(function()
   for _, info in pairs(blips) do
     info.blip = AddBlipForCoord(info.x, info.y, info.z)
     SetBlipSprite(info.blip, info.id)
     SetBlipDisplay(info.blip, 4)
     SetBlipScale(info.blip, 1)
     SetBlipColour(info.blip, info.colour)
     SetBlipAsShortRange(info.blip, true)
     BeginTextCommandSetBlipName("STRING")
     AddTextComponentString(info.title)
     EndTextCommandSetBlipName(info.blip)
   end
end)