Config              = {}

--playtime tick
savetime = 8000 -- Save the time every 30 seconds 
--end

--washmony
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 3.0, y = 3.0, z = 1.0}
Config.MarkerColor  = {r = 255, g = 35, b = 35}
Config.ZDiff        = 2.0
Config.BlipSprite   = 431
Config.Locale       = 'en'

Config.Blip = true

Config.WASH = {
    { ['x'] = 1136.91,  ['y'] = -992.13,  ['z'] = 46.11},
}
Config.Map = {
  {name="Money Wash",  		color=6, scale=0.8, id=500, x = 930.14, y = 43.25, z = 81.09}
}
--


--REAL BLOOD
Config.particleDictionary = "core"
Config.particleName = "blood_stab"
--END


--HOLSTER WEAPON
Config.CooldownPolice = 700
Config.cooldown		  = 1700

-- Add/remove weapon hashes here to be added for holster checks.
Config.Weapons = {
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
	"WEAPON_APPISTOL",
	"WEAPON_BROWNING",
	"WEAPON_PISTOL50",
	"WEAPON_SNSPISTOL",
	"WEAPON_HEAVYPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_MARKSMANPISTOL",
	"WEAPON_MACHINEPISTOL",
	"WEAPON_VINTAGEPISTOL",
	"WEAPON_PISTOL_MK2",
	"WEAPON_SNSPISTOL_MK2",
	"WEAPON_FLAREGUN",
	"WEAPON_STUNGUN",
	"WEAPON_SAWNOFFSHOTGUN",
	"WEAPON_KNIFE",
	"WEAPON_CROWBAR",
	"WEAPON_DAGGER",
	"WEAPON_MACHETE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_SMG",
	"WEAPON_HEAVYSNIPER",
}

--END

--PUSHVEHICLE
Config.DamageNeeded = 100.0 -- 100.0 being broken and 1000.0 being fixed a lower value than 100.0 will break it
Config.MaxWidth = 5.0 -- Will complete soon
Config.MaxHeight = 5.0
Config.MaxLength = 5.0
--

--ITEMS USABLE
Config.Removeables = {
	-- true = Removes when used | false = Does opposite of true
	Bandage = true,
	BulletProofVest = true,
	Defib = false,
	Drill = false,
	Firework = true,
	FirstAidKit = true,
	OxygenMask = true,
	RepairKit = true,
	TireKit = true,
	WeaKit = false,
	AmmoBoxes = true,
	-- true = Removes if Failed | false = Doesn't remove if Failed
	LockPick = true
}

-- Item Scenario Wait Times in MS
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

Config.Heal = true -- true = Will allow First Aid Kits to Heal Players | false = Will give 3 Bandages

-- Binoculars
Config.BinocularsPutAway = 177 -- Backspace Key

-- Weapon Ammos
Config.AmmoBoxes = {
	Pistol = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	SMG = 50, -- 9mm @ 0.28 per round | 50 x 1.05 = 14
	Shotgun = 25, -- 12g @ 0.36 per round | 25 x 0.36 = 9
	Rifle = 25, -- 5.56 @ 0.47 per round | 25 x 0.47 = 11.75 (12)
	MG = 50, -- 5.56 @ 0.47 per round | 50 x 0.47 = 23.50 (24)
	Sniper = 20, -- 7.62 @ 1.05 per round | 20 x 1.05 = 21
	Flare = 5, -- Not doing Realistic Price
	BoxBig = 100,
	BoxSmall = 50
}

Config.WeaponList = {
	Pistols = {
		'WEAPON_PISTOL',
		'WEAPON_COMBATPISTOL',
		'WEAPON_APPISTOL',
		'WEAPON_BROWNING',
		'WEAPON_PISTOL50',
		'WEAPON_SNSPISTOL',
		'WEAPON_HEAVYPISTOL',
		'WEAPON_VINTAGEPISTOL',
		'WEAPON_MACHINEPISTOL',
		'WEAPON_REVOLVER',
		'WEAPON_MARKSMANPISTOL',
		'WEAPON_DOUBLEACTION'
	},
	SMGs = {
		'WEAPON_SMG',
		'WEAPON_ASSAULTSMG',
		'WEAPON_MICROSMG',
		'WEAPON_MINISMG',
		'WEAPON_COMBATPDW'
	},
	Shotguns = {
		'WEAPON_PUMPSHOTGUN',
		'WEAPON_SAWNOFFSHOTGUN',
		'WEAPON_ASSAULTSHOTGUN',
		'WEAPON_BULLPUPSHOTGUN',
		'WEAPON_HEAVYSHOTGUN',
		'WEAPON_DBSHOTGUN',
		'WEAPON_AUTOSHOTGUN',
		'WEAPON_MUSKET'
	},
	Rifles = {
		'WEAPON_ASSAULTRIFLE',
		'WEAPON_CARBINERIFLE',
		'WEAPON_ADVANCEDRIFLE',
		'WEAPON_SPECIALCARBINE',
		'WEAPON_BULLPUPRIFLE',
		'WEAPON_COMPACTRIFLE'
	},
	MGs = {
		'WEAPON_MG',
		'WEAPON_COMBATMG',
		'WEAPON_GUSENBERG'
	},
	Snipers = {
		'WEAPON_SNIPERRIFLE',
		'WEAPON_HEAVYSNIPER',
		'WEAPON_MARKSMANRIFLE'
	},
	Flares = {
		'WEAPON_FLAREGUN'
	}
}

-- Vehicle GPS
Config.GPS = {
	VehicleGPS = true, -- Set to true to use Vehicle GPS.
	LimitedVehicles = true, -- Set to true to only allow Aircrafts, Boats, & Cars to use GPS.
	OnlyFrontSeats = true, -- Set to true to only allow the front 2 seats to be able to see Radar if they used it.
	BikeGPS = {
		'sanchez'
	}
}


--PLASTIC SYGERY
Config.MarkerTypePlastic   = 1
Config.DrawDistancePlastic = 100.0
Config.MarkerSizePlastic   = {x = 2.0, y = 2.0, z = 1.0}
Config.MarkerColorPlastic  = {r = 102, g = 102, b = 204}

Config.BlipPlasticSurgery = {
	Sprite = 279,
	Color = 1,
	Display = 2,
	Scale = 0.8
}

Config.PricePlastic = 2000 -- Edit to your liking.

Config.EnableUnemployedOnlyPlastic = false -- If true it will only show Blips to Unemployed Players | false shows it to Everyone.
Config.EnableBlipsPlastic = true -- If true then it will show blips | false does the Opposite.
Config.EnablePedsPlastic = true -- If true then it will add Peds on Markers | false does the Opposite.

Config.LocationsPlastic = {
	--{ x = 402.85, y = -998.4, z = -100.0, heading = 180.0 }, -- Police Booking Room
	{ x = -828.49, y = -689.89, z = 27.06, heading = 96.63 } -- Hospital Bottom Floor
	--{ x = 340.0, y = -581.9, z = 27.79, heading = 281.39 } -- Pillbox Hill MLO
}

Config.ZonesPlastic = {}

for i=1, #Config.LocationsPlastic, 1 do
	Config.ZonesPlastic['Shop_' .. i] = {
		Pos   = Config.LocationsPlastic[i],
		Size  = Config.MarkerSizePlastic,
		Color = Config.MarkerColorPlastic,
		Type  = Config.MarkerTypePlastic
	}
end
---

--REPAIR
Config.RepairTime			= 8 -- In seconds, how long should a repair take with a standard repir kit? Default = 8 seconds
Config.RepairTimeAdvanced	= 16 -- In seconds, how long should a repair take with a standard repir kit? Default = 5 seconds
Config.AllowMecano			= true -- Allow mechanics to use this repairkit?

--END
Config.AllTattooList = json.decode(LoadResourceFile(GetCurrentResourceName(), 'AllTattoos.json'))
Config.TattooCats = {
	{"ZONE_HEAD", "Head", {vec(0.0, 0.7, 0.7), vec(0.7, 0.0, 0.7), vec(0.0, -0.7, 0.7), vec(-0.7, 0.0, 0.7)}, vec(0.0, 0.0, 0.5)},
	{"ZONE_LEFT_LEG", "Left Leg", {vec(-0.2, 0.7, -0.7), vec(-0.7, 0.0, -0.7), vec(-0.2, -0.7, -0.7)}, vec(-0.2, 0.0, -0.6)},
	{"ZONE_LEFT_ARM", "Left Arm", {vec(-0.4, 0.5, 0.2), vec(-0.7, 0.0, 0.2), vec(-0.4, -0.5, 0.2)}, vec(-0.2, 0.0, 0.2)},
	{"ZONE_RIGHT_LEG", "Right Leg", {vec(0.2, 0.7, -0.7), vec(0.7, 0.0, -0.7), vec(0.2, -0.7, -0.7)}, vec(0.2, 0.0, -0.6)},
	{"ZONE_TORSO", "Torso", {vec(0.0, 0.7, 0.2), vec(0.0, -0.7, 0.2)}, vec(0.0, 0.0, 0.2)},
	{"ZONE_RIGHT_ARM", "Right Arm", {vec(0.4, 0.5, 0.2), vec(0.7, 0.0, 0.2), vec(0.4, -0.5, 0.2)}, vec(0.2, 0.0, 0.2)},
}

Config.Shops = {
	vec(1322.6, -1651.9, 51.2),
	vec(-1153.6, -1425.6, 4.9),
	vec(322.1, 180.4, 103.5),
	vec(-3170.0, 1075.0, 20.8),
	vec(1864.6, 3747.7, 33.0),
	vec(-293.7, 6200.0, 31.4)
}

--BARBER

Config.PriceBarber = 100

Config.DrawDistanceBarber = 100.0
Config.MarkerSizeBarber   = vector3(1.5, 1.5, 1.0)
Config.MarkerColorBarber  = {r = 102, g = 102, b = 204}
Config.MarkerTypeBarber   = 1

Config.ShopsBarber = {
	vector3(-814.3, -183.8, 36.6),
	vector3(136.8, -1708.4, 28.3),
	vector3(-1282.6, -1116.8, 6.0),
	vector3(1931.5, 3729.7, 31.8),
	vector3(1212.8, -472.9, 65.2),
	vector3(-32.9, -152.3, 56.1),
	vector3(-278.1, 6228.5, 30.7)
}

--END
--CHOPSHOP
Config.NPCModel = 'csb_talcc'
Config.NPCLocation = {x = 152.69, y = -3209.59, z = 4.9, h = 83.82}

Config.RandomItems = {
    'hackerDevice',
}

Config.Vehicles = {
    {model = 'BUFFALO', name = 'Buffalo'}, 
    {model = 'FUTO', name = 'Futo'}, 
    {model = 'LANDSTALKER', name = 'Landstalker'}, 
    {model = 'BUFFALO', name = 'Buffalo'}, 
    {model = 'DOMINATOR', name = 'Dominator'}, 
    {model = 'COMET2', name = 'Comet 2'},
    {model = 'PANTO', name = 'Panto'},
    {model = 'FUTO', name = 'Futo'},
}

Config.VehicleLocations = {
    {x = 1166.86, y = 2727.08, z = 38.00, h = 270.00},
    {x = 173.99, y = 471.6, z = 141.91, h = 350.00},
    {x = -6.24, y = -1104.47, z = 38.15, h = 250.00},
    {x = 136.79, y = 6649.6, z = 31.2, h = 225.00},
    {x = 1708.07, y = 4825.41, z = 41.67, h = 7.00},
}

Config.DeliveryGarages = {
    {x = 1009.4, y = -2527.3, z = 28.31},
    {x = 970.81, y = -1626.29, z = 30.11},
}

Config.PaymentInBlackMoney = true
Config.MoneyLostPerHitPoint = 50
Config.Payment = 5900

Config.EnableCooldown = false
Config.Cooldown = 120000 --Time in ms 1800000
Config.ChoppingTime = 5000 --Time is in ms
Config.FinishingUpTime = 5000 --Time in ms
--END
--DESYNC FIX
Config.All = {
    displaytext = true,
    text = '❌'
}
--
--FISHING
Config.sellitemprices = { --You can add here other stuff too if you i.e add more variety of fishes
  catfish = 200,
  salmon = 260,
  rainbow = 1800,
  tuna = 300,
  shark = 3100,
  bass = 350,
  dolphin = 2500,
}


Config.fishwebhook = '' --Caught fishes -log
Config.sellwebhook = 'https://discord.com/api/webhooks/922286683829973033/WyYTaBYFl15Z5g49vUGtoo5G7GLNX-8C-uPWiK5JOHZFdINUqb6vh8AK81PyLrz73t9F' --Shopselling -log
---END
--HUNTING
Config.sellhuntprices = { --You can add here other stuff too if you i.e add more variety of fishes
  boarmeat = 350,
  boartusk = 250,
  deerskin = 100,
  deermeat = 280,
  coyotefur = 300,
  coyotemeat = 500,
}


Config.sellwebhookhunting = 'https://discord.com/api/webhooks/927228201728630825/pYrcHN7Y4Rg_MXKpyhytJp2RevbN9vhpWe_s4sL6mU7alCiFfPjSm-bXXoHCnKJsySk3' --Shopselling -log

--END
--RESTART

Config.ESXLibrary = "esx:getSharedObjects" --default
Config.AdminGroups = {"superadmin"} --Groups who can use command
Config.CommandName = "sr" --Command name
--Translate it :D
Config.Translate = {
    [1] = "TSUNAMI INCOMING: ~r~",
    [2] = " ~s~SECONDS",
    [3] = "You dont have permission!",
    [4] = "⚠️ SERVER RESTART: Server is currently being restarted. ⚠️"
}
--END
--PAWNSHOP
-- Change items that can be sold at the pawnshop, the number behind = is the price
Config.PawnshopItems = {
	rolex = 1200,
	gold = 1000,
	diamond = 2000, 
	dia_box = 2500, 
	goldwatch = 700, 
	goldcoins = 650,
	silver = 300,
	minichest = 600,
	microwave = 800,
	coffeemaker = 900,
	fakerolex = 500,
	tv = 1800,
	fabric = 100,
	metalscrap = 100,
	metalsheets = 100,
	hempfibres = 100,
	ducttape = 100,
	screws = 100,
	hackerchip = 200,
	iron = 150,
	copper = 130,
	cardcraft = 200,

	jewels = 300,
	bluediamondring = 500,

	gold_bar = 1500,
	milk = 10,
	oapple = 50,
	orange = 40,
	orangep = 80,
	blueberry_package = 400,
	blueberry_fruit = 300,
	pomarancza = 50,
	rice = 50,
	book = 50,
	coffee = 50,
	ipad = 350,
	wheat = 50,
	rice_pro = 40,
	coral = 290,
	coralp = 1500,
	tomato_package = 450,
	tomato_fruit = 45,
	golden_bareto = 1300,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.PawnshopLocation =  {x = 412.12, y = 314.84, z = 103.02}
Config.PawnshopLocation2 =  {x = 182.57, y = -1319.7, z = 29.32}
Config.PawnshopLocation3 =  {x = -1459.51, y = -413.77, z = 35.75}


-- Pawnshop blip
Config.PawnshopBlipText = "Pawn Shop"
Config.PawnshopBlipColor = 5
Config.PawnshopBlipSprite = 108
--END


--COKE PROCESS
Config.PickupBlip = {x = -1833.4  , y = 2176.7 ,z = 107.2}
Config.Processing = {x = 2434.2  , y = 4968.6, z =41.3}
--END

--DRUGS
-- // Set max cap on how many drugs a player can sell between a server-restart, remember this cannot be 0, instead set to 9999999999 for unlimited // --
Config.maxCap = 40

-- // MISSION REWARD // --
Config.Reward = {
	["meth"] = math.random(1,2),
	["coke"] = math.random(1,2),
	["weed"] = math.random(0,0),
}

---END

--REALISTIV FAILURE VEHICLE
-- Configuration:

-- IMPORTANT: Some of these values MUST be defined as a floating point number. ie. 10.0 instead of 10

cfg = {
	deformationMultiplier = 1.3, -- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
	deformationExponent = 1.0, -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 1.0, -- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 8.1, -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 3.6, -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 61.0, -- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 0.8, -- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.194, -- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 7.4, -- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 1.5, -- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 577.0, -- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 310.0, -- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0, -- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true, -- Decrease engine torge as engine gets more and more damaged

	limpMode = false, -- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15, -- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = true, -- If true, you can't turn over an upside down vehicle
	preventVehicleAirControl = true,

	sundayDriver = true, -- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5, -- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0, -- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = false, -- Show blips for mechanics locations

	compatibilityMode = true,

	randomTireBurstInterval = 0,

	classDamageMultiplier = {
		[0] = 0.10, --	0: Compacts
		[1] = 0.10, --	1: Sedans
		[2] = 0.10, --	2: SUVs
		[3] = 0.10, --	3: Coupes
		[4] = 0.10, --	4: Muscle
		[5] = 0.10, --	5: Sports Classics
		[6] = 0.10, --	6: Sports
		[7] = 0.10, --	7: Super
		[8] = 0.05, --	8: Motorcycles
		[9] = 0.10, --	9: Off-road
		[10] = 0.10, --	10: Industrial
		[11] = 0.10, --	11: Utility
		[12] = 0.10, --	12: Vans
		[13] = 0.10, --	13: Cycles
		[14] = 0.10, --	14: Boats
		[15] = 0.10, --	15: Helicopters
		[16] = 0.10, --	16: Planes
		[17] = 0.10, --	17: Service
		[18] = 0.10, --	18: Emergency
		[19] = 0.10, --	19: Military
		[20] = 0.10, --	20: Commercial
		[21] = 0.10, --	21: Trains
		[22] = 0.10 --	21: Trains
	}
}


--[[

	-- Alternate configuration values provided by ImDylan93 - Vehicles can take more damage before failure, and the balance between vehicles has been tweaked.
	-- To use: comment out the settings above, and uncomment this section.

cfg = {

	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
	deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 5.1,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 5.1,						-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 61.0,				-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 0.124,			-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 7.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 677.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 310.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torge as engine gets more and more damaged

	limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = true,						-- Show blips for mechanics locations

	classDamageMultiplier = {
		[0] = 	0.10,		--	0: Compacts
				0.10,		--	1: Sedans
				0.10,		--	2: SUVs
				0.10,		--	3: Coupes
				0.10,		--	4: Muscle
				0.10,		--	5: Sports Classics
				0.10,		--	6: Sports
				0.10,		--	7: Super
				0.05,		--	8: Motorcycles
				0.10,		--	9: Off-road
				0.10,		--	10: Industrial
				0.10,		--	11: Utility
				0.10,		--	12: Vans
				0.10,		--	13: Cycles
				0.10,		--	14: Boats
				0.10,		--	15: Helicopters
				0.10,		--	16: Planes
				0.10,		--	17: Service
				0.10,		--	18: Emergency
				0.10,		--	19: Military
				0.10,		--	20: Commercial
				0.10			--	21: Trains
	}
}

]]--





-- End of Main Configuration

-- Configure Repair system

-- id=446 for wrench icon, id=72 for spraycan icon

repairCfg = {
	mechanics = {
		{name="Mechanic", id=446, r=25.0, x=-337.0,  y=-135.0,  z=39.0},	-- LSC Burton
		{name="Mechanic", id=446, r=25.0, x=-1155.0, y=-2007.0, z=13.0},	-- LSC by airport
		{name="Mechanic", id=446, r=25.0, x=734.0,   y=-1085.0, z=22.0},	-- LSC La Mesa
		{name="Mechanic", id=446, r=25.0, x=1177.0,  y=2640.0,  z=37.0},	-- LSC Harmony
		{name="Mechanic", id=446, r=25.0, x=108.0,   y=6624.0,  z=31.0},	-- LSC Paleto Bay
		{name="Mechanic", id=446, r=18.0, x=538.0,   y=-183.0,  z=54.0},	-- Mechanic Hawic
		{name="Mechanic", id=446, r=15.0, x=1774.0,  y=3333.0,  z=41.0},	-- Mechanic Sandy Shores Airfield
		{name="Mechanic", id=446, r=15.0, x=1143.0,  y=-776.0,  z=57.0},	-- Mechanic Mirror Park
		{name="Mechanic", id=446, r=30.0, x=2508.0,  y=4103.0,  z=38.0},	-- Mechanic East Joshua Rd.
		{name="Mechanic", id=446, r=16.0, x=2006.0,  y=3792.0,  z=32.0},	-- Mechanic Sandy Shores gas station
		{name="Mechanic", id=446, r=25.0, x=484.0,   y=-1316.0, z=29.0},	-- Hayes Auto, Little Bighorn Ave.
		{name="Mechanic", id=446, r=33.0, x=-1419.0, y=-450.0,  z=36.0},	-- Hayes Auto Body Shop, Del Perro
		{name="Mechanic", id=446, r=33.0, x=268.0,   y=-1810.0, z=27.0},	-- Hayes Auto Body Shop, Davis
	--	{name="Mechanic", id=446, r=24.0, x=288.0,   y=-1730.0, z=29.0},	-- Hayes Auto, Rancho (Disabled, looks like a warehouse for the Davis branch)
		{name="Mechanic", id=446, r=27.0, x=1915.0,  y=3729.0,  z=32.0},	-- Otto's Auto Parts, Sandy Shores
		{name="Mechanic", id=446, r=45.0, x=-29.0,   y=-1665.0, z=29.0},	-- Mosley Auto Service, Strawberry
		{name="Mechanic", id=446, r=44.0, x=-212.0,  y=-1378.0, z=31.0},	-- Glass Heroes, Strawberry
		{name="Mechanic", id=446, r=33.0, x=258.0,   y=2594.0,  z=44.0},	-- Mechanic Harmony
		{name="Mechanic", id=446, r=18.0, x=-32.0,   y=-1090.0, z=26.0},	-- Simeons
		{name="Mechanic", id=446, r=25.0, x=-211.0,  y=-1325.0, z=31.0},	-- Bennys
		{name="Mechanic", id=446, r=25.0, x=903.0,   y=3563.0,  z=34.0},	-- Auto Repair, Grand Senora Desert
		{name="Mechanic", id=446, r=25.0, x=437.0,   y=3568.0,  z=38.0}		-- Auto Shop, Grand Senora Desert
	},

	fixMessages = {
		"You put the oil plug back in",
		"You stopped the oil leak using chewing gum",
		"You repaired the oil tube with gaffer tape",
		"You tightened the oil pan screw and stopped the dripping",
		"You kicked the engine and it magically came back to life",
		"You removed some rust from the spark tube",
		"You yelled at your vehicle, and it somehow had an effect"
	},
	fixMessageCount = 7,

	noFixMessages = {
		"You checked the oil plug. It's still there",
		"You looked at your engine, it seemed fine",
		"You made sure that the gaffer tape was still holding the engine together",
		"You turned up the radio volume. It just drowned out the weird engine noises",
		"You added rust-preventer to the spark tube. It made no difference",
		"Never fix something that ain't broken they said. You didn't listen. At least it didn't get worse"
	},
	noFixMessageCount = 6
}

RepairEveryoneWhitelisted = true
RepairWhitelist =
{
	"steam:123456789012345",
	"steam:000000000000000",
	"ip:192.168.0.1"			-- not sure if ip whitelist works?
}

--END

--HUNTING END

AOD = {}

AOD.HuntAnimals = {'a_c_deer', 'a_c_coyote', 'a_c_boar'}
AOD.SpawnDistanceRadius = math.random(50,65) --disance animal spawns from bait
AOD.HuntingZones = {'CMSW' , 'SANCHIA', 'MTGORDO', 'MTJOSE', 'PALHIGH'} --add valid zones here
AOD.SpawnChance = 100 -- 10 percent chance use values .01 - 1.0
AOD.DistanceFromBait = 7.0 -- distance from player to spawn bait
AOD.DistanceTooCloseToAnimal = 7.0
AOD.HuntingWeapon = `WEAPON_MUSKET` --set to nil for no requirement
AOD.HuntAnyWhere = false
AOD.UseBlip = true -- set to true for the animal to have a blip on the map
AOD.BlipText = 'Prey'

--Rewards for butchering animals
AOD.BoarMeat = math.random(5) -- amount of meat to receive from Boars
AOD.BoarTusk = 2
AOD.DeerSkin = 1
AOD.DeerMeat = math.random(5)
AOD.CoyoteFur = 1
AOD.CoyoteMeat = math.random(5)

AOD.Strings = {
ESXClient = 'esx:getSharedObject',
ESXServer = 'esx:getSharedObject',
NotValidZone = 'Your bait would not take here',
ExploitDetected = 'You are trying to exploit, please do not do this',
DontSpam = 'You were charged one bait for spamming',
WaitToBait = 'You need to wait longer to place bait',
PlacingBait = 'Placing Bait',
BaitPlaced = 'Bait placed.. now time to wait',
Roadkill = 'Looks more like roadkill now',
NoAnimal = 'No Animal nearby',
NotDead = 'Animal not dead',
NotYours = 'Not your animal',
WTF = 'What are you doing?',
Harvest = 'Butchering animal',
Butchered = 'Animal butchered'
}

--END