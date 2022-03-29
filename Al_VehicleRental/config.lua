-- Script Made By Aljunier | Made For ESX Framework --

Config = {}

Config.MarkerType = 36 --https://docs.fivem.net/game-references/markers/

--Rental Cars
Config.RentalCars = {
    ['Asea'] = {
        ['Rental Info'] = {
            ['model'] = 'asea',
            ['information'] = 'Asea 6000$',
            ['price'] = 6000
        }
    },
    ['Rocoto'] = {
        ['Rental Info'] = {
            ['model'] = 'rocoto',
            ['information'] = 'Rocoto 4000 $',
            ['price'] = 4000
        }
    },
    ['Felon'] = {
        ['Rental Info'] = {
            ['model'] = 'felon',
            ['information'] = 'Felon 2000 $',
            ['price'] = 2000
        }
    },
    
}

Config.CommercialRentals = {
    ['Taco'] = {
        ['Rental Info'] = {
            ['model'] = 'taco',
            ['information'] = 'Taco Truck 275 ৳',
            ['price'] = 450
        }
    },
    ['Pounder'] = {
        ['Rental Info'] = {
            ['model'] = 'pounder',
            ['information'] = 'Pounder 600 ৳',
            ['price'] = 600
        }
    },
    ['Phantom'] = {
        ['Rental Info'] = {
            ['model'] = 'phantom',
            ['information'] = 'Phantom 900 ৳',
            ['price'] = 900
        }
    },
    ['Packer'] = {
        ['Rental Info'] = {
            ['model'] = 'packer',
            ['information'] = 'Packer  ৳900',
            ['price'] = 900
        }
    },
    ['Hauler'] = {
        ['Rental Info'] = {
            ['model'] = 'hauler',
            ['information'] = 'Hauler 900 ৳',
            ['price'] = 900
        }
    },
    ['Mule'] = {
        ['Rental Info'] = {
            ['model'] = 'mule',
            ['information'] = 'Mule  ৳350',
            ['price'] = 350
        }
    },
    ['Mule3'] = {
        ['Rental Info'] = {
            ['model'] = 'mule3',
            ['information'] = 'Mule With Pushbar  ৳450',
            ['price'] = 450
        }
    },
    ['Benson'] = {
        ['Rental Info'] = {
            ['model'] = 'benson',
            ['information'] = 'Benson  ৳450',
            ['price'] = 450
        }
    },
    ['Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'bus',
            ['information'] = 'Bus  ৳1050',
            ['price'] = 1050
        }
    },
    ['Coach Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'coach',
            ['information'] = 'Coach Bus  ৳1050',
            ['price'] = 1050
        }
    },
    ['Tour Bus'] = {
        ['Rental Info'] = {
            ['model'] = 'tourbus',
            ['information'] = 'Tour Bus  ৳550',
            ['price'] = 550
        }
    },
    ['Brickade'] = {
        ['Rental Info'] = {
            ['model'] = 'brickade',
            ['information'] = 'Brickade  ৳1450 Including Fees',
            ['price'] = 1450
        }
    },


}


----NOTE: There is not a need to lower your 'Z' value by 1 anymore, the script handles that by itself!----
Config.RentalLocations = {

    -- Car Rentals
    -- ['Prison'] = {
        -- ['Marker'] = {
            -- ['Type'] = 'Car Rental',
            -- ['x'] = 1854.69,
            -- ['y'] = 2582.28,
            -- ['z'] = 45.67,
        -- },
        -- ['VehicleReturn'] = {
            -- ['x'] = 1854.77,
            -- ['y'] = 2593.02,
            -- ['z'] = 45.67,
        -- },
        -- ['VehicleSpawn'] = {
            -- ['x'] = 1858.42,
            -- ['y'] = 2599.64,
            -- ['z'] = 45.67,
            -- ['Heading'] = 270.74
        -- }
    -- },
    -- ['Paleto Bay'] = {
        -- ['Marker'] = {
            -- ['Type'] = 'Car Rental',
            -- ['x'] = -144.02,
            -- ['y'] = 6305.72,
            -- ['z'] = 31.56,
        -- },
        -- ['VehicleReturn'] = {
            -- ['x'] = -157.86,
            -- ['y'] = 6302.68,
            -- ['z'] = 31.45,
        -- },
        -- ['VehicleSpawn'] = {
            -- ['x'] = -147.95,
            -- ['y'] = 6311.67,
            -- ['z'] = 31.41,
            -- ['Heading'] = 314.58
        -- }
    -- },
    ['LS Airport'] = {
        ['Marker'] = {
            ['Type'] = 'Car Rental',
            ['x'] = -1032.65,
            ['y'] = -2736.32,
            ['z'] = 21.17,
        },
        ['VehicleReturn'] = {
            ['x'] = 212.01,
            ['y'] = -798.28,
            ['z'] = 30.88,
        },
        ['VehicleSpawn'] = {
            ['x'] = -1034.59,
            ['y'] = -2729.37,
            ['z'] = 20.1,
            ['Heading'] = 248.7
        }
    },
    -- ['LS North'] = {
        -- ['Marker'] = {
            -- ['Type'] = 'Car Rental',
            -- ['x'] = 598.66,
            -- ['y'] = 90.73,
            -- ['z'] = 92.83,
        -- },
        -- ['VehicleReturn'] = {
            -- ['x'] = 611.21,
            -- ['y'] = 98.63,
            -- ['z'] = 92.69,
        -- },
        -- ['VehicleSpawn'] = {
            -- ['x'] = 595.87,
            -- ['y'] = 84.35,
            -- ['z'] = 92.83,
            -- ['Heading'] = 254.04
        -- }
    -- },

    -- Commercial Rentals
    -- ['LS East Commercial'] = {
        -- ['Marker'] = {
            -- ['Type'] = 'Commercial Rental',
            -- ['x'] = 915.12,
            -- ['y'] = -1515.3,
            -- ['z'] = 31.13,
        -- },
        -- ['VehicleReturn'] = {
            -- ['x'] = 923.17,
            -- ['y'] = -1537.34,
            -- ['z'] = 30.88,
        -- },
        -- ['VehicleSpawn'] = {
            -- ['x'] = 908.75,
            -- ['y'] = -1552.3,
            -- ['z'] = 30.71,
            -- ['Heading'] = 126.98
        -- }
    -- },
}