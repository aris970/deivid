----------------------------------------------------------------------------
-- MELEE AND WEAPONS DAMAGE 
----------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.00001) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.0001) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGHT"), 0.0001) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.0001) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIFE"), 0.1) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SWITCHBLADE"), 0.1) 
        Wait(0)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHETE"), 0.15) 
        Wait(0)	
    end
end)
----------------------------------------------------------------------------
--stop PISTOL WHIPPING
----------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
    local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
       DisableControlAction(1, 140, true)
              DisableControlAction(1, 141, true)
           DisableControlAction(1, 142, true)
        end
    end
end)
