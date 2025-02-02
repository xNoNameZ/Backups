if not game:IsLoaded() then game.Loaded:Wait(3) end

-- Config Function

_G.Settings = {
    ["Settings"] = {
        ["White Screen"] = false,
        ["Low Graphic"] = false,
        ["Locking FPS"] = 240,
    },

    ["Melee"] = {
        ["Death Step"] = true,
		["Electric Claw"] = true,
		["Dragon Talon"] = true,
		["Sharkman Karate"] = true,
		["Superhuman"] = true,
		["God Human"] = true,
    },

    ["Quest"] = {
        ["Rainbow Haki"] = true,
        ["Musketeer Hat"] = true,
        ["Mirror Fractal"] = true,
        ["Pirates Raid"] = true,
    },

    ["Sword"] = {
		["Saber"] = true,
		["Pole"] = true,

		["Rengoku"] = true,
        ["Shisui"] = true,
		["Saddi"] = true,
		["Wando"] = true,
        ["Midnight Blade"] = true,
		["True Triple Katana"] = true,

		["Canvander"] = true,
		["Buddy Sword"] = true,
		["Twin Hooks"] = true,
		["Hallow Scythe"] = true,
        ["Yama"] = true,
		["Tushita"] = true,
		["Cursed Dual Katana"] = true,
    },

    ["Gun"] = {
		["Kabucha"] = true,
		["Venom Bow"] = true,
		["Skull Guitar"] = true,
    },

    ["Mastery"] = {
        ["Sword"] = {
            ["Select Rarity"] = {},
            ["Auto Farm Mastery Sword"] = true,
        }
    },

    ["Race"] = {
        ["Select Race"] = {},

        ["Evo Race V2"] = true,
        ["Evo Race V3"] = true,
    },
    ["Fruit"] = {
        ["Select Fruit"] = {},
        ["Start Sniper"] = true,
    },
}

-- Join Team Function

-- Sea Variables

local PlaceId = game.PlaceId
if PlaceId == 2753915549 then
	OldWorld = true
elseif PlaceId == 4442272183 then
	NewWorld = true
elseif PlaceId == 7449423635 then
	ThirdWorld = true
end

-- Check Quest Function

function CheckQuest() 
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if OldWorld then
		if MyLevel == 1 or MyLevel <= 14 then
			Mon = "Bandit"
			LevelQuest = 1
			NameQuest = "BanditQuest1"
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
			CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
		elseif MyLevel == 15 or MyLevel <= 29 then
			Mon = "Gorilla"
			LevelQuest = 2
			NameQuest = "JungleQuest"
			NameMon = "Gorilla"
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-1230.667724609375, 6.279364109039307, -516.2539672851562)
		elseif MyLevel == 30 or MyLevel <= 39 then
			Mon = "Pirate"
			LevelQuest = 1
			NameQuest = "BuggyQuest1"
			NameMon = "Pirate"
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(-1218.242431640625, 4.75205135345459, 3915.81103515625)
		elseif MyLevel == 40 or MyLevel <= 59 then
			Mon = "Brute"
			LevelQuest = 2
			NameQuest = "BuggyQuest1"
			NameMon = "Brute"
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(-1140.083740234375, 14.809885025024414, 4322.92138671875)
		elseif MyLevel == 60 or MyLevel <= 74 then
			Mon = "Desert Bandit"
			LevelQuest = 1
			NameQuest = "DesertQuest"
			NameMon = "Desert Bandit"
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
			CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
		elseif MyLevel == 75 or MyLevel <= 89 then
			Mon = "Desert Officer"
			LevelQuest = 2
			NameQuest = "DesertQuest"
			NameMon = "Desert Officer"
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
			CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
		elseif MyLevel == 90 or MyLevel <= 99 then
			Mon = "Snow Bandit"
			LevelQuest = 1
			NameQuest = "SnowQuest"
			NameMon = "Snow Bandit"
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
		elseif MyLevel == 100 or MyLevel <= 119 then
			Mon = "Snowman"
			LevelQuest = 2
			NameQuest = "SnowQuest"
			NameMon = "Snowman"
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
			CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
		elseif MyLevel == 120 or MyLevel <= 149 then
			Mon = "Chief Petty Officer"
			LevelQuest = 1
			NameQuest = "MarineQuest2"
			NameMon = "Chief Petty Officer"
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
		elseif MyLevel == 150 or MyLevel <= 174 then
			Mon = "Sky Bandit"
			LevelQuest = 1
			NameQuest = "SkyQuest"
			NameMon = "Sky Bandit"
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
		elseif MyLevel == 175 or MyLevel <= 189 then
			Mon = "Dark Master"
			LevelQuest = 2
			NameQuest = "SkyQuest"
			NameMon = "Dark Master"
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
		elseif MyLevel == 190 or MyLevel <= 209 then
			Mon = "Prisoner"
			LevelQuest = 1
			NameQuest = "PrisonerQuest"
			NameMon = "Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
		elseif MyLevel == 210 or MyLevel <= 249 then
			Mon = "Dangerous Prisoner"
			LevelQuest = 2
			NameQuest = "PrisonerQuest"
			NameMon = "Dangerous Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
		elseif MyLevel == 250 or MyLevel <= 274 then
			Mon = "Toga Warrior"
			LevelQuest = 1
			NameQuest = "ColosseumQuest"
			NameMon = "Toga Warrior"
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
			CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
		elseif MyLevel == 275 or MyLevel <= 299 then
			Mon = "Gladiator"
			LevelQuest = 2
			NameQuest = "ColosseumQuest"
			NameMon = "Gladiator"
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)

			CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
			CFrameMon1 = CFrame.new(-1230.49341, 7.32281303, -3050.3501, -0.28372404, 1.11183759e-07, -0.958905995, 7.6644703e-08, 1, 9.32706783e-08, 0.958905995, -4.70319321e-08, -0.28372404)
			CFrameMon2 = CFrame.new(-1491.22864, 7.47755527, -3194.2019, -0.0407506861, 1.26799691e-08, 0.99916935, -4.24122177e-08, 1, -1.44202748e-08, -0.99916935, -4.29646256e-08, -0.0407506861)
			CFrameMon3 = CFrame.new(-1371.93115, 7.40200901, -3379.23804, 0.83229202, 3.40531443e-08, 0.554337442, 1.86150118e-08, 1, -8.93792631e-08, -0.554337442, 8.47086454e-08, 0.83229202)
			CFrameMon4 = CFrame.new(-1356.52759, 7.31427479, -3594.57959, 0.982409298, -9.45884482e-10, -0.186740339, -1.34027092e-08, 1, -7.55746186e-08, 0.186740339, 7.67480373e-08, 0.982409298)
			CFrameMon5 = CFrame.new(-1116.98181, 7.32406616, -3270.92383, -0.249164313, 9.3330101e-08, -0.968461215, -2.98388088e-08, 1, 1.04046364e-07, 0.968461215, 5.48223724e-08, -0.249164313)

		elseif MyLevel == 300 or MyLevel <= 324 then
			Mon = "Military Soldier"
			LevelQuest = 1
			NameQuest = "MagmaQuest"
			NameMon = "Military Soldier"
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
		elseif MyLevel == 325 or MyLevel <= 374 then
			Mon = "Military Spy"
			LevelQuest = 2
			NameQuest = "MagmaQuest"
			NameMon = "Military Spy"
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
			CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
		elseif MyLevel == 375 or MyLevel <= 399 then
			Mon = "Fishman Warrior"
			LevelQuest = 1
			NameQuest = "FishmanQuest"
			NameMon = "Fishman Warrior"
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 400 or MyLevel <= 449 then
			Mon = "Fishman Commando"
			LevelQuest = 2
			NameQuest = "FishmanQuest"
			NameMon = "Fishman Commando"
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 450 or MyLevel <= 474 then
			Mon = "God's Guard"
			LevelQuest = 1
			NameQuest = "SkyExp1Quest"
			NameMon = "God's Guard"
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
			CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
			end
		elseif MyLevel == 475 or MyLevel <= 524 then
			Mon = "Shanda"
			LevelQuest = 2
			NameQuest = "SkyExp1Quest"
			NameMon = "Shanda"
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
			CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
			end
		elseif MyLevel == 525 or MyLevel <= 549 then
			Mon = "Royal Squad"
			LevelQuest = 1
			NameQuest = "SkyExp2Quest"
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
		elseif MyLevel == 550 or MyLevel <= 624 then
			Mon = "Royal Soldier"
			LevelQuest = 2
			NameQuest = "SkyExp2Quest"
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
		elseif MyLevel == 625 or MyLevel <= 649 then
			Mon = "Galley Pirate"
			LevelQuest = 1
			NameQuest = "FountainQuest"
			NameMon = "Galley Pirate"
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
			CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
		elseif MyLevel >= 650 then
			Mon = "Galley Captain"
			LevelQuest = 2
			NameQuest = "FountainQuest"
			NameMon = "Galley Captain"
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
			CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
		end
	elseif NewWorld then
		if MyLevel == 700 or MyLevel <= 724 then
			Mon = "Raider"
			LevelQuest = 1
			NameQuest = "Area1Quest"
			NameMon = "Raider"
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)

			CFrameMon = CFrame.new(364.545532, 39.4827118, 2318.80884, 0.99361068, 0, -0.112861879, 0, 1, 0, 0.112861879, 0, 0.99361068)
			CFrameMon = CFrame.new(-713.320312, 39.483036, 2382.00244, 0.99998039, 0, 0.00626525469, 0, 1, 0, -0.00626525469, 0, 0.99998039)
		elseif MyLevel == 725 or MyLevel <= 774 then
			Mon = "Mercenary"
			LevelQuest = 2
			NameQuest = "Area1Quest"
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)

			CFrameMon = CFrame.new(-959.88562, 79.0433121, 1689.34216, -0.519833982, -4.60919694e-08, -0.854267299, -2.10137969e-08, 1, -4.11677767e-08, 0.854267299, -3.44900886e-09, -0.519833982)
			CFrameMob = CFrame.new(-1097.50134, 80.2704315, 1154.44653, -0.998735368, -5.17227328e-08, 0.0502755493, -5.20890033e-08, 1, -5.97504224e-09, -0.0502755493, -8.58628901e-09, -0.998735368)
		elseif MyLevel == 750 or MyLevel <= 799 then
			Mon = "Swan Pirate"
			LevelQuest = 1
			NameQuest = "Area2Quest"
			NameMon = "Swan Pirate"
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
			CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
		elseif MyLevel == 800 or MyLevel <= 874 then
			Mon = "Factory Staff"
			NameQuest = "Area2Quest"
			LevelQuest = 2
			NameMon = "Factory Staff"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
			CFrameMon = CFrame.new(-179.817947, 149.77565, -255.867432, -0.386231571, 4.79212892e-09, -0.922401845, -4.66115857e-08, 1, 2.47126515e-08, 0.922401845, 5.25394199e-08, -0.386231571)
		elseif MyLevel == 875 or MyLevel <= 899 then
			Mon = "Marine Lieutenant"
			LevelQuest = 1
			NameQuest = "MarineQuest3"
			NameMon = "Marine Lieutenant"
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			CFrameMon = CFrame.new(-2439.96313, 73.3593445, -3218.30811, 0.513842463, 1.80383619e-08, -0.857884586, -4.84671325e-09, 1, 1.81235524e-08, 0.857884586, -5.15472953e-09, 0.513842463)
		elseif MyLevel == 900 or MyLevel <= 949 then
			Mon = "Marine Captain"
			LevelQuest = 2
			NameQuest = "MarineQuest3"
			NameMon = "Marine Captain"
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
			CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
		elseif MyLevel == 950 or MyLevel <= 974 then
			Mon = "Zombie"
			LevelQuest = 1
			NameQuest = "ZombieQuest"
			NameMon = "Zombie"
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
			CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
		elseif MyLevel == 975 or MyLevel <= 999 then
			Mon = "Vampire"
			LevelQuest = 2
			NameQuest = "ZombieQuest"
			NameMon = "Vampire"
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
			CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
		elseif MyLevel == 1000 or MyLevel <= 1049 then
			Mon = "Snow Trooper"
			LevelQuest = 1
			NameQuest = "SnowMountainQuest"
			NameMon = "Snow Trooper"
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
		elseif MyLevel == 1050 or MyLevel <= 1099 then
			Mon = "Winter Warrior"
			LevelQuest = 2
			NameQuest = "SnowMountainQuest"
			NameMon = "Winter Warrior"
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
			CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
		elseif MyLevel == 1100 or MyLevel <= 1124 then
			Mon = "Lab Subordinate"
			LevelQuest = 1
			NameQuest = "IceSideQuest"
			NameMon = "Lab Subordinate"
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
		elseif MyLevel == 1125 or MyLevel <= 1174 then
			Mon = "Horned Warrior"
			LevelQuest = 2
			NameQuest = "IceSideQuest"
			NameMon = "Horned Warrior"
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
			CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
		elseif MyLevel == 1175 or MyLevel <= 1199 then
			Mon = "Magma Ninja"
			LevelQuest = 1
			NameQuest = "FireSideQuest"
			NameMon = "Magma Ninja"
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
		elseif MyLevel == 1200 or MyLevel <= 1249 then
			Mon = "Lava Pirate"
			LevelQuest = 2
			NameQuest = "FireSideQuest"
			NameMon = "Lava Pirate"
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
		elseif MyLevel == 1250 or MyLevel <= 1274 then
			Mon = "Ship Deckhand"
			LevelQuest = 1
			NameQuest = "ShipQuest1"
			NameMon = "Ship Deckhand"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
			CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1275 or MyLevel <= 1299 then
			Mon = "Ship Engineer"
			LevelQuest = 2
			NameQuest = "ShipQuest1"
			NameMon = "Ship Engineer"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
			CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end           
		elseif MyLevel == 1300 or MyLevel <= 1324 then
			Mon = "Ship Steward"
			LevelQuest = 1
			NameQuest = "ShipQuest2"
			NameMon = "Ship Steward"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
			CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1325 or MyLevel <= 1349 then
			Mon = "Ship Officer"
			LevelQuest = 2
			NameQuest = "ShipQuest2"
			NameMon = "Ship Officer"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
			CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
			end
		elseif MyLevel == 1350 or MyLevel <= 1374 then
			Mon = "Arctic Warrior"
			LevelQuest = 1
			NameQuest = "FrostQuest"
			NameMon = "Arctic Warrior"
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
			CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
			if ReturnFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
			end
		elseif MyLevel == 1375 or MyLevel <= 1424 then
			Mon = "Snow Lurker"
			LevelQuest = 2
			NameQuest = "FrostQuest"
			NameMon = "Snow Lurker"
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
			CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
		elseif MyLevel == 1425 or MyLevel <= 1449 then
			Mon = "Sea Soldier"
			LevelQuest = 1
			NameQuest = "ForgottenQuest"
			NameMon = "Sea Soldier"
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
			CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter"
			LevelQuest = 2
			NameQuest = "ForgottenQuest"
			NameMon = "Water Fighter"
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
			CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
		end
	elseif ThirdWorld then
		if MyLevel == 1500 or MyLevel <= 1524 then
			Mon = "Pirate Millionaire"
			LevelQuest = 1
			NameQuest = "PiratePortQuest"
			NameMon = "Pirate Millionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			Mon = "Pistol Billionaire"
			LevelQuest = 2
			NameQuest = "PiratePortQuest"
			NameMon = "Pistol Billionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior"
			LevelQuest = 1
			NameQuest = "AmazonQuest"
			NameMon = "Dragon Crew Warrior"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
		elseif MyLevel == 1600 or MyLevel <= 1624 then 
			Mon = "Dragon Crew Archer"
			NameQuest = "AmazonQuest"
			LevelQuest = 2
			NameMon = "Dragon Crew Archer"
			CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
			CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			Mon = "Female Islander"
			NameQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
		elseif MyLevel == 1650 or MyLevel <= 1699 then 
			Mon = "Giant Islander"
			NameQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
			CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			Mon = "Marine Commodore"
			LevelQuest = 1
			NameQuest = "MarineTreeIsland"
			NameMon = "Marine Commodore"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			Mon = "Marine Rear Admiral"
			NameMon = "Marine Rear Admiral"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 2
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
			CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
		elseif MyLevel == 1775 or MyLevel <= 1799 then
			Mon = "Fishman Raider"
			LevelQuest = 1
			NameQuest = "DeepForestIsland3"
			NameMon = "Fishman Raider"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
			CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			Mon = "Fishman Captain"
			LevelQuest = 2
			NameQuest = "DeepForestIsland3"
			NameMon = "Fishman Captain"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			Mon = "Forest Pirate"
			LevelQuest = 1
			NameQuest = "DeepForestIsland"
			NameMon = "Forest Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			Mon = "Mythological Pirate"
			LevelQuest = 2
			NameQuest = "DeepForestIsland"
			NameMon = "Mythological Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			Mon = "Jungle Pirate"
			LevelQuest = 1
			NameQuest = "DeepForestIsland2"
			NameMon = "Jungle Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			Mon = "Musketeer Pirate"
			LevelQuest = 2
			NameQuest = "DeepForestIsland2"
			NameMon = "Musketeer Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			Mon = "Reborn Skeleton"
			LevelQuest = 1
			NameQuest = "HauntedQuest1"
			NameMon = "Reborn Skeleton"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			Mon = "Living Zombie"
			LevelQuest = 2
			NameQuest = "HauntedQuest1"
			NameMon = "Living Zombie"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			Mon = "Demonic Soul"
			LevelQuest = 1
			NameQuest = "HauntedQuest2"
			NameMon = "Demonic Soul"
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			Mon = "Posessed Mummy"
			LevelQuest = 2
			NameQuest = "HauntedQuest2"
			NameMon = "Posessed Mummy"
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
		elseif MyLevel == 2075 or MyLevel <= 2099 then
			Mon = "Peanut Scout"
			LevelQuest = 1
			NameQuest = "NutsIslandQuest"
			NameMon = "Peanut Scout"
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			Mon = "Peanut President"
			LevelQuest = 2
			NameQuest = "NutsIslandQuest"
			NameMon = "Peanut President"
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			Mon = "Ice Cream Chef"
			LevelQuest = 1
			NameQuest = "IceCreamIslandQuest"
			NameMon = "Ice Cream Chef"
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			Mon = "Ice Cream Commander"
			LevelQuest = 2
			NameQuest = "IceCreamIslandQuest"
			NameMon = "Ice Cream Commander"
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			Mon = "Cookie Crafter"
			LevelQuest = 1
			NameQuest = "CakeQuest1"
			NameMon = "Cookie Crafter"
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
			CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			Mon = "Cake Guard"
			LevelQuest = 2
			NameQuest = "CakeQuest1"
			NameMon = "Cake Guard"
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
			CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			Mon = "Baking Staff"
			LevelQuest = 1
			NameQuest = "CakeQuest2"
			NameMon = "Baking Staff"
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			Mon = "Head Baker"
			LevelQuest = 2
			NameQuest = "CakeQuest2"
			NameMon = "Head Baker"
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
			CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			Mon = "Cocoa Warrior"
			LevelQuest = 1
			NameQuest = "ChocQuest1"
			NameMon = "Cocoa Warrior"
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
			CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler"
			LevelQuest = 2
			NameQuest = "ChocQuest1"
			NameMon = "Chocolate Bar Battler"
			CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
			CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			Mon = "Sweet Thief"
			LevelQuest = 1
			NameQuest = "ChocQuest2"
			NameMon = "Sweet Thief"
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
			CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			Mon = "Candy Rebel"
			LevelQuest = 2
			NameQuest = "ChocQuest2"
			NameMon = "Candy Rebel"
			CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
			CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
		elseif MyLevel == 2400 or MyLevel <= 2424 then
			Mon = "Candy Pirate"
			LevelQuest = 1
			NameQuest = "CandyQuest1"
			NameMon = "Candy Pirate"
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
			CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
		elseif MyLevel == 2425 or MyLevel <= 2449 then
			Mon = "Snow Demon"
			LevelQuest = 2
			NameQuest = "CandyQuest1"
			NameMon = "Snow Demon"
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
			CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
		elseif MyLevel == 2450 or MyLevel <= 2474 then
			Mon = "Isle Outlaw"
			LevelQuest = 1
			NameQuest = "TikiQuest1"
			NameMon = "Isle Outlaw"
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
			CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
		elseif MyLevel == 2475 or MyLevel <= 2499 then
			Mon = "Island Boy"
			LevelQuest = 2
			NameQuest = "TikiQuest1"
			NameMon = "Island Boy"
			CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
			CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
		elseif MyLevel == 2500 or MyLevel <= 2524 then
			Mon = "Sun-kissed Warrior"
			LevelQuest = 1
			NameQuest = "TikiQuest2"
			NameMon = "kissed"
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
			CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
		elseif MyLevel >= 2525 and MyLevel <= 2549 then
			Mon = "Isle Champion"
			NameMon = "Isle Champion"
			NameQuest = "TikiQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
			CFrameMon = CFrame.new(-16619.37109375, 129.9848175048828, 1071.235595703125) 
		elseif MyLevel >= 2550 and MyLevel <= 2574 then
			Mon = "Serpent Hunter"
			NameMon = "Serpent Hunter"
			NameQuest = "TikiQuest3"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-16666.5703125, 105.2913818359375, 1576.6925048828125)
			CFrameMon = CFrame.new(-16504.627, 71.2836075, 1671.83789, -0.999970615, -6.17218321e-09, -0.00766335614, -6.48970344e-09, 1, 4.14086756e-08, 0.00766335614, 4.14571915e-08, -0.999970615)     
		elseif MyLevel >= 2575 and MyLevel <= 2600 then
			Mon = "Skull Slayer"
			NameMon = "Skull Slayer"
			NameQuest = "TikiQuest3"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-16666.5703125, 105.2913818359375, 1576.6925048828125)
			CFrameMon = CFrame.new(-16888.084, 71.2837677, 1606.15649, -0.999646544, 1.24633104e-08, -0.0265844502, 1.30363809e-08, 1, -2.13833165e-08, 0.0265844502, -2.17223253e-08, -0.999646544) 
		end
	end
end

-- Check Boss Quest Function

function CheckBossQuest()
	if Select_Boss == "Saber Expert" then
		MsBossBoss = "Saber Expert"
		NameBoss = "Saber Expert"
		CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094)
	elseif Select_Boss == "The Saw" then
		MsBossBoss = "The Saw"
		NameBoss = "The Saw"
		CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.88365773e-08, 0.956968188, 6.98413629e-08, 1, -5.07531119e-08, -0.956968188, 5.21077759e-08, -0.290192783)
	elseif Select_Boss == "Greybeard" then
		MsBossBoss = "Greybeard"
		NameBoss = "Greybeard"
		CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.03394289e-08, 0.901083171, -3.0443168e-08, 1, -3.17633075e-09, -0.901083171, -2.88092288e-08, -0.433646321)
	elseif Select_Boss == "The Gorilla King" then
		MsBossBoss = "The Gorilla King"
		NameBoss = "The Gorilla King"
		NameQuestBoss = "JungleQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
		CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
	elseif Select_Boss == "Bobby" then
		MsBossBoss = "Bobby"
		NameBoss = "Bobby"
		NameQuestBoss = "BuggyQuest1"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
		CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.77109952e-10, -0.29113996, 5.16530874e-10, 1, 1.08897802e-09, 0.29113996, -1.19218679e-09, 0.956680477)
	elseif Select_Boss == "Yeti" then
		MsBossBoss = "Yeti"
		NameBoss = "Yeti"
		NameQuestBoss = "SnowQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.72035177e-08, -0.959938943, -6.75690828e-08, 1, 8.6151708e-09, 0.959938943, 6.24481444e-08, 0.280209213)
		CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.49245944e-08, 0.936994851, 6.29478194e-08, 1, 7.7838429e-08, -0.936994851, 3.17894653e-08, 0.349343032)
	elseif Select_Boss == "Mob Leader" then
		MsBossBoss = "Mob Leader"
		NameBoss = "Mob Leader"
		CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-08, 0.371961564, -7.61816636e-08, 1, 4.44474857e-08, -0.371961564, 1.29216433e-08, -0.92824)
	elseif Select_Boss == "Vice Admiral" then
		MsBossBoss = "Vice Admiral"
		NameBoss = "Vice Admiral"
		NameQuestBoss = "MarineQuest2"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.08395768e-08, 0.998130739, -1.57416586e-08, 1, 8.00271849e-08, -0.998130739, -1.08217701e-08, -0.0611100644)
		CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.88630566e-11, 0.831466436, -6.35508286e-08, 1, -4.23449258e-08, -0.831466436, -7.63661632e-08, -0.555574954)
	elseif Select_Boss == "Warden" then
		MsBossBoss = "Warden"
		NameBoss = "Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 1
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Boss == "Chief Warden" then
		MsBossBoss = "Chief Warden"
		NameBoss = "Chief Warden"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 2
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Boss == "Swan" then
		MsBossBoss = "Swan"
		NameBoss = "Swan"
		NameQuestBoss = "ImpelQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.68303741e-08, -0.842635691, 1.38001752e-08, 1, -8.81300792e-08, 0.842635691, -5.90851599e-08, -0.538484037)
		CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-08, 0.330433697, 3.47818627e-08, 1, 3.81658154e-08, -0.330433697, -2.45289105e-08, 0.943829298)
	elseif Select_Boss == "Magma Admiral" then
		MsBossBoss = "Magma Admiral"
		NameBoss = "Magma Admiral"
		NameQuestBoss = "MagmaQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.65508806e-08, -0.859131515, -3.91131572e-08, 1, -5.42026761e-08, 0.859131515, 6.13418294e-08, 0.51175487)
		CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.23414389e-08, 0.513919294, 1.53689133e-08, 1, -6.91265853e-08, -0.513919294, 6.71978384e-08, 0.857838571)
	elseif Select_Boss == "Fishman Lord" then
		MsBossBoss = "Fishman Lord"
		NameBoss = "Fishman Lord"
		NameQuestBoss = "FishmanQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-07, 0.374700129, -6.98219367e-08, 1, -1.10790765e-07, -0.374700129, 7.65569368e-08, 0.927145958)
		CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
	elseif Select_Boss == "Wysper" then
		MsBossBoss = "Wysper"
		NameBoss = "Wysper"
		NameQuestBoss = "SkyExp1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.45838088e-08, -0.886386991, 1.0534996e-08, 1, 2.19553424e-08, 0.886386991, -1.95022007e-08, 0.462944925)
		CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.22915289e-09, 0.697619379, 3.37381434e-09, 1, -1.70304748e-09, -0.697619379, 3.57381835e-09, 0.716468513)
	elseif Select_Boss == "Thunder God" then
		MsBossBoss = "Thunder God"
		NameBoss = "Thunder God"
		NameQuestBoss = "SkyExp2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.16895912e-07, 0.999347389, 1.44533963e-09, 1, 1.17024491e-07, -0.999347389, 5.6715117e-09, -0.0361216255)
		CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.80563429e-08, -0.261550069, -6.73089886e-08, 1, -6.46515304e-08, 0.261550069, 8.00056768e-08, 0.965189934)
	elseif Select_Boss == "Cyborg" then
		MsBossBoss = "Cyborg"
		NameBoss = "Cyborg"
		NameQuestBoss = "FountainQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.93677887e-08, -0.999936521, 2.55291371e-10, 1, -9.93769547e-08, 0.999936521, -1.37512213e-09, -0.0112687312)
		CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.73805248e-09, -0.826346457, -5.94632716e-08, 1, 4.26280238e-08, 0.826346457, 7.31437524e-08, -0.563162148)
		-- New World
	elseif Select_Boss == "Diamond" then
		MsBossBoss = "Diamond"
		NameBoss = "Diamond"
		NameQuestBoss = "Area1Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
		CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
	elseif Select_Boss == "Jeremy" then
		MsBossBoss = "Jeremy"
		NameBoss = "Jeremy"
		NameQuestBoss = "Area2Quest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
		CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
	elseif Select_Boss == "Fajita" then
		MsBossBoss = "Fajita"
		NameBoss = "Fajita"
		NameQuestBoss = "MarineQuest3"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
		CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.46645796e-09, -0.275756449, -2.3212845e-09, 1, -1.34094433e-08, 0.275756449, 1.35296352e-08, 0.961227536)
	elseif Select_Boss == "Don Swan" then
		MsBossBoss = "Don Swan"
		NameBoss = "Don Swan"
		CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.41247214e-08, -0.0227668174, 8.4774733e-08, 1, 2.75850098e-08, 0.0227668174, -2.95079072e-08, 0.99974072)
	elseif Select_Boss == "Smoke Admiral" then
		MsBossBoss = "Smoke Admiral"
		NameBoss = "Smoke Admiral"
		NameQuestBoss = "IceSideQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-09, 0.895534337, -3.64098796e-08, 1, -1.4644522e-08, -0.895534337, -3.91229982e-08, -0.444992423)
		CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.48345061e-08, -0.967869282, 4.02796978e-08, 1, 2.57916977e-08, 0.967869282, -4.54708946e-08, 0.251453817)
	elseif Select_Boss == "Cursed Captain" then
		MsBossBoss = "Cursed Captain"
		NameBoss = "Cursed Captain"
		CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.26310495e-09, 0.0314563364, 8.42916226e-09, 1, -2.6643713e-08, -0.0314563364, -2.63653774e-08, -0.999505103)
	elseif Select_Boss == "Darkbeard" then
		MsBossBoss = "Darkbeard"
		NameBoss = "Darkbeard"
		CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.97356325e-08, 0.213458836, 4.57335361e-08, 1, -2.36868622e-08, -0.213458836, -1.33787044e-08, -0.976951957)
	elseif Select_Boss == "Order" then
		MsBossBoss = "Order"
		NameBoss = "Order"
		CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.41463495e-08, 0.924687505, 5.85604774e-08, 1, -5.60738549e-08, -0.924687505, 3.28013137e-08, -0.380726993)
	elseif Select_Boss == "Awakened Ice Admiral" then
		MsBossBoss = "Awakened Ice Admiral"
		NameBoss = "Awakened Ice Admiral"
		NameQuestBoss = "FrostQuest"
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.25320829e-08, 0.388910472, 4.72230788e-08, 1, -7.96414241e-08, -0.388910472, 9.17372489e-08, 0.921275556)
		CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.25310213e-08, -0.871432424, -2.76146022e-08, 1, -7.58250565e-08, 0.871432424, 6.12576301e-08, 0.49051559)
	elseif Select_Boss == "Tide Keeper" then
		MsBossBoss = "Tide Keeper"
		NameBoss = "Tide Keeper"
		NameQuestBoss = "ForgottenQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.58504737e-09, 0.16681771, -3.07832915e-09, 1, 3.29612559e-09, -0.16681771, 2.73641976e-09, -0.985987961)
		CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202)
		-- Thire World
	elseif Select_Boss == "Stone" then
		MsBossBoss = "Stone"
		NameBoss = "Stone"
		NameQuestBoss = "PiratePortQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-290, 44, 5577)
		CFrameBoss = CFrame.new(-1085, 40, 6779)
	elseif Select_Boss == "Island Empress" then
		MsBossBoss = "Island Empress"
		NameBoss = "Island Empress"
		NameQuestBoss = "AmazonQuest2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(5443, 602, 752)
		CFrameBoss = CFrame.new(5659, 602, 244)
	elseif Select_Boss == "Kilo Admiral" then
		MsBossBoss = "Kilo Admiral"
		NameBoss = "Kilo Admiral"
		NameQuestBoss = "MarineTreeIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(2178, 29, -6737)
		CFrameBoss =CFrame.new(2846, 433, -7100)
	elseif Select_Boss == "Captain Elephant" then
		MsBossBoss = "Captain Elephant"
		NameBoss = "Captain Elephant"
		NameQuestBoss = "DeepForestIsland"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
		CFrameBoss = CFrame.new(-13221, 325, -8405)
	elseif Select_Boss == "Beautiful Pirate" then
		MsBossBoss = "Beautiful Pirate"
		NameBoss = "Beautiful Pirate"
		NameQuestBoss = "DeepForestIsland2"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
		CFrameBoss = CFrame.new(5182, 23, -20)
	elseif Select_Boss == "Cake Queen" then
		MsBossBoss = "Cake Queen"
		NameBoss = "Cake Queen"
		NameQuestBoss = "IceCreamIslandQuest"             
		LevelQuestBoss = 3
		CFrameQuestBoss = CFrame.new(-716, 382, -11010)
		CFrameBoss = CFrame.new(-821, 66, -10965)
	elseif Select_Boss == "rip_indra True Form" then
		MsBossBoss = "rip_indra True Form"
		NameBoss = "rip_indra True Form"
		CFrameBoss = CFrame.new(-5359, 424, -2735)
	elseif Select_Boss == "Longma" then
		MsBossBoss = "Longma"
		NameBoss = "Longma"
		CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
	elseif Select_Boss == "Soul Reaper" then
		MsBossBoss = "Soul Reaper"
		NameBoss = "Soul Reaper"
		CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
	end
end

-- Tween Movement Function

function toTarget(p)
	task.spawn(function()
		pcall(function()
			if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 200 then 
				game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Destroy();
					wait()
					toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
					wait()
					if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
					end
				end;
				if game.Players.LocalPlayer.Character:FindFirstChild("Root") then
					game.Players.LocalPlayer.Character:FindFirstChild("Root"):Remove();
				end;
			elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				local K = Instance.new("Part",game.Players.LocalPlayer.Character)
				K.Size = Vector3.new(1,0.5,1)
				K.Name = "Root"
				K.Anchored = true
				K.Transparency = 1
				K.CanCollide = false
				K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0)
			end
			local r = game:GetService("Players").LocalPlayer
			local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
			local z = game:service("TweenService")
			local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
			local S,g = pcall(function()
				local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
				q:Play()
			end)
			if _G.CancelTween == true then
				q:Cancel()
				_G.Clip = false
			end
			if not S then 
				return g
			end
			game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
				pcall(function()
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 50 then 
						task.spawn(function()
							pcall(function()
								if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 200 then 
									game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								else 
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
								end
							end)
						end)
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 25 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 40 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 25 then 
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					end
				end)
			end
		end)
	end)    
end

function toTargetPos(pos)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end
function CancelTween(target)
	if not target then
		_G.CancelTween = true
		wait()
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
		wait()
		if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
		end
		_G.CancelTween = false
		_G.Clip = false
	end
	if game.Players.LocalPlayer.Character:FindFirstChild('Highlight') then
		game.Players.LocalPlayer.Character:FindFirstChild('Highlight'):Destroy()
	end
end

-- Changed Body

function HightlightBody()
	local Plrs = game:GetService("Players")
	local LP = Plrs.LocalPlayer
	local a = Color3.new(0.000000, 0.717647, 1.000000)
	local b = Color3.new(1, 1, 1)
	local c = 0.4
	local d = 0 
	local function H(plr)
		if not plr.Character then return end
		local ex = plr.Character:FindFirstChild("H_0")
		if ex then ex:Destroy() end
		local hig0x = Instance.new("Highlight")
		hig0x.Name = "H_0"
		hig0x.Adornee = plr.Character
		hig0x.FillColor = a
		hig0x.OutlineColor = b
		hig0x.FillTransparency = c
		hig0x.OutlineTransparency = d
		hig0x.Parent = plr.Character
	end
	local function S_0x(plr)
		if plr.Character then H(plr) end
		plr.CharacterAdded:Connect(function()
			task.wait(0.1)
			H(plr)
		end)
	end
	S_0x(LP)
	for _, plr in ipairs(Plrs:GetPlayers()) do
		if plr ~= LP then S_0x(plr) end
	end
	Plrs.PlayerAdded:Connect(S_0x)
end

-- Fast Attack Function

local environment, replicatedstorage, players, net, client, modulepath, characterfolder, enemyfolder do
	environment = (getgenv or getrenv or getfenv)()
	replicatedstorage = game:GetService("ReplicatedStorage")
	players = game:GetService("Players")
	client = players.LocalPlayer
	modulepath = replicatedstorage:WaitForChild("Modules")
	net = modulepath:WaitForChild("Net")
	characterfolder = workspace:WaitForChild("Characters")
	enemyfolder = workspace:WaitForChild("Enemies")
end

local Module = {}
Module.AttackCooldown = .0
local CachedChars = {}

function Module.IsAlive(Char: Model?): boolean
	if not Char then
		return nil
	end

	if CachedChars[Char] then
		return CachedChars[Char].Health > 0
	end

	local Hum = Char:FindFirstChildOfClass("Humanoid")
	CachedChars[Char] = Hum
	return Hum and Hum.Health > 0
end

local Settings = {
	ClickDelay = 0.1,
	AutoClick = true
}

Module.FastAttack = (function()
	if environment._trash_attack then
		return environment._trash_attack
	end
	local module = {
		NextAttack = 0,
		Distance = 100,
		attackMobs = _G.AttackMob,
		attackPlayers = _G.AttackPlayer
	}
	local RegisterAttack = net:WaitForChild("RE/RegisterAttack")
	local RegisterHit = net:WaitForChild("RE/RegisterHit")
	function module:AttackEnemy(EnemyHead, Table)
		if EnemyHead and client:DistanceFromCharacter(EnemyHead.Position) < self.Distance then
			if not self.FirstAttack then
				RegisterAttack:FireServer(.0)
				self.FirstAttack = true
			end
			RegisterHit:FireServer(EnemyHead, Table or {})
		end
	end
	function module:AttackNearest()
		local args = {
			[1] = nil,
			[2] = {}
		}
		for _, Enemy in enemyfolder:GetChildren() do
			local HRP = Enemy:FindFirstChild("HumanoidRootPart", true)
			if HRP and client:DistanceFromCharacter(HRP.Position) < self.Distance then
				if not args[1] then
					args[1] = Enemy:FindFirstChild("UpperTorso")
				else
					table.insert(args[2], {
						[1] = Enemy,
						[2] = Enemy:FindFirstChild("UpperTorso")
					})
				end
			end
		end
		self:AttackEnemy(unpack(args))
		for _, Enemy in characterfolder:GetChildren() do
			if Enemy ~= client.Character then
				self:AttackEnemy(Enemy:FindFirstChild("UpperTorso"))
			end
		end
		if not self.FirstAttack then
			task.wait(.0)
		end
	end
	function module:BladeHits()
		self:AttackNearest()
		self.FirstAttack = false
	end
	task.spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			if (tick() - Module.AttackCooldown) < 0 then continue end
			if not Settings.AutoClick then continue end
			if not Module.IsAlive(client.Character) then continue end
			if not client.Character:FindFirstChildOfClass("Tool") then continue end
			module:BladeHits()
		end
	end)
	environment._trash_attack = module
	return module
end)()

local RS = game:GetService("ReplicatedStorage")
local regAtk = RS.Modules.Net:FindFirstChild("RE/RegisterAttack")
local regHit = RS.Modules.Net:FindFirstChild("RE/RegisterHit")

local function zXy9(player)
	local lst = {}
	for _, obj in pairs(workspace.Characters:GetChildren()) do
		if obj ~= player.Character and obj:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(obj.HumanoidRootPart.Position) < 200 then
			table.insert(lst, {obj, obj.HumanoidRootPart})
		end
	end

	for _, obj2 in pairs(workspace.Enemies:GetChildren()) do
		if obj2:FindFirstChild("HumanoidRootPart") and player:DistanceFromCharacter(obj2.HumanoidRootPart.Position) < 200 then
			table.insert(lst, {obj2, obj2.HumanoidRootPart})
		end
	end

	return lst
end

local AttackFarm2 = false

task.spawn(function()
	while true do
		if AttackFarm1 then
			AttackFarm2 = true
			wait(0.1)
		else
			AttackFarm2 = false
			wait(0.1)
		end
		if AttackFarm1 then
			local cLst = zXy9(game.Players.LocalPlayer)
			if #cLst > 0 then
				regAtk:FireServer(0.1)
				for _, tgt in next, cLst do
					regHit:FireServer(cLst[_][2], cLst)
				end
			end
		end
	end
end)

AttackFarm1 = true
FastAttack = true

task.spawn(function()
	while true do
		task.wait(0.1)
		pcall(function()
			if FastAttack then
				for i, v in next, workspace.Enemies:GetChildren() do
					if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and 
						(v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= tonumber(60) then

						game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack"):FireServer(0)

						local args = {
							[1] = v:FindFirstChild("RightHand"),
							[2] = {}
						}

						for _, e in next, workspace:WaitForChild("Enemies"):GetChildren() do
							if e:FindFirstChild("Humanoid") and e.Humanoid.Health > 0 then
								table.insert(args[2], {
									[1] = e,
									[2] = e:FindFirstChild("HumanoidRootPart") or e:FindFirstChildOfClass("BasePart")
								})
							end
						end

						game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit"):FireServer(unpack(args))
					end
				end
			end
		end)
	end
end)

local environment, replicatedstorage, players, net, client, modulepath, characterfolder, enemyfolder do
	environment = (getgenv or getrenv or getfenv)()
	replicatedstorage = game:GetService("ReplicatedStorage")
	players = game:GetService("Players")
	client = players.LocalPlayer
	modulepath = replicatedstorage:WaitForChild("Modules")
	net = modulepath:WaitForChild("Net")
	characterfolder = workspace:WaitForChild("Characters")
	enemyfolder = workspace:WaitForChild("Enemies")
end

local Module = {}
Module.AttackCooldown = .0
local CachedChars = {}

function Module.IsAlive(Char: Model?): boolean
	if not Char then
		return nil
	end

	if CachedChars[Char] then
		return CachedChars[Char].Health > 0
	end

	local Hum = Char:FindFirstChildOfClass("Humanoid")
	CachedChars[Char] = Hum
	return Hum and Hum.Health > 0
end

local Settings = {
	ClickDelay = 0.1,
	AutoClick = true
}
Module.FastAttack = (function()
	if environment._trash_attack then
		return environment._trash_attack
	end
	local module = {
		NextAttack = 0,
		Distance = 100,
		attackMobs = _G.AttackMob,
		attackPlayers = _G.AttackPlayer
	}
	local RegisterAttack = net:WaitForChild("RE/RegisterAttack")
	local RegisterHit = net:WaitForChild("RE/RegisterHit")
	function module:AttackEnemy(EnemyHead, Table)
		if EnemyHead and client:DistanceFromCharacter(EnemyHead.Position) < self.Distance then
			if not self.FirstAttack then
				RegisterAttack:FireServer(.0)
				self.FirstAttack = true
			end
			RegisterHit:FireServer(EnemyHead, Table or {})
		end
	end
	function module:AttackNearest()
		local args = {
			[1] = nil,
			[2] = {}
		}
		for _, Enemy in enemyfolder:GetChildren() do
			local HRP = Enemy:FindFirstChild("HumanoidRootPart", true)
			if HRP and client:DistanceFromCharacter(HRP.Position) < self.Distance then
				if not args[1] then
					args[1] = Enemy:FindFirstChild("UpperTorso")
				else
					table.insert(args[2], {
						[1] = Enemy,
						[2] = Enemy:FindFirstChild("UpperTorso")
					})
				end
			end
		end
		self:AttackEnemy(unpack(args))
		for _, Enemy in characterfolder:GetChildren() do
			if Enemy ~= client.Character then
				self:AttackEnemy(Enemy:FindFirstChild("UpperTorso"))
			end
		end
		if not self.FirstAttack then
			task.wait(0.1)
		end
	end
	function module:BladeHits()
		self:AttackNearest()
		self.FirstAttack = false
	end
	task.spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			if (tick() - Module.AttackCooldown) < 0 then continue end
			if not Settings.AutoClick then continue end
			if not Module.IsAlive(client.Character) then continue end
			if not client.Character:FindFirstChildOfClass("Tool") then continue end
			module:BladeHits()
		end
	end)
	environment._trash_attack = module
	return module
end)()

-- Attack Function

function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end
function AttackPlayers()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

-- Active Buso

function ActiveHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end

-- Equip Function

task.spawn(function()
	while wait() do
		pcall(function()
			if Weapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			elseif Weapon == "Fruits" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							Weapon = v.Name
						end
					end
				end
			end
		end)
	end
end)

function EquipWeapon(ToolSe)
	if not game.Players.LocalPlayer.Character:FindFirstChild(ToolSe) then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

function UnEquipMelee()
	if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
		game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
	end
end

function EquipMelee()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Melee" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

function EquipSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end

task.spawn(function()
	pcall(function()
		while wait() do
			for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
				if v:IsA("Tool") then
					if v:FindFirstChild("RemoteFunctionShoot") then 
						SelectWeaponGun = v.Name
					end
				end
			end
		end
	end)
end)

-- Have Function

function HaveItem(Weaponname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

function HaveItem(ah)
	for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
		if v.Name == ah then
			return v
		end
	end
end

function HaveMob(name)
	return game.Workspace.Enemies:FindFirstChild(name) or game.ReplicatedStorage:FindFirstChild(name)
end

function HaveMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

-- Idlet Function

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-- Optimizing Function

task.spawn(function()
	for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"]:GetChildren()) do
		pcall(function()
			if v.Name == ("CurvedRing") or v.Name == ("SlashHit") or v.Name == ("SwordSlash") or v.Name == ("SlashTail") or v.Name == ("Sounds") then
				v:Destroy()
			end
		end)
	end
end)

-- Start Magnet Function

_G.StartMagnet = true

task.spawn(function()
	while task.wait() do
		pcall(function()
			CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.StartMagnet and StartMagnet then
					if StartMagnet and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 250 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= getgenv().Magnitude then
								v.HumanoidRootPart.CFrame = PosMon
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								v.HumanoidRootPart.Locked = true
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(11)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)

task.spawn(function()
	while task.wait(.0) do
		if _G.StartMagnet and StartMagnet then
			pcall(function()
				CheckQuest()
				local enemies = game:GetService("Workspace").Enemies:GetChildren()
				for _, enemy1 in pairs(enemies) do
					for _, enemy2 in pairs(enemies) do
						if enemy1.Name == Enemy and enemy2.Name == Enemy then
							if enemy1:FindFirstChild("Humanoid") and enemy1:FindFirstChild("HumanoidRootPart") and 
								enemy2:FindFirstChild("Humanoid") and enemy2:FindFirstChild("HumanoidRootPart") then
								if enemy1.Humanoid.Health > 0 and enemy2.Humanoid.Health > 0 then
									enemy1.HumanoidRootPart.CFrame = enemy2.HumanoidRootPart.CFrame
									enemy1.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
									enemy2.HumanoidRootPart.Size = Vector3.new(40, 40, 40)
									enemy1.HumanoidRootPart.Transparency = 1
									enemy1.HumanoidRootPart.CanCollide = false
									enemy1.Humanoid.WalkSpeed = 0
									enemy1.Humanoid.JumpPower = 0
									enemy1.Humanoid:ChangeState(11)
									enemy2.HumanoidRootPart.Transparency = 1
									enemy2.HumanoidRootPart.CanCollide = false
									enemy2.Humanoid.WalkSpeed = 0
									enemy2.Humanoid.JumpPower = 0
									enemy2.Humanoid:ChangeState(11)
									if sethiddenproperty then
										sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
									end
								end
							end
						end
					end
				end
			end)
		end
	end
end)

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= getgenv().Magnitude then 
			return true
		end
		return false
	end
end

-- Mastery Function

function CheckMastery(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

-- Sea Event Function

local function myboat()
	for i,v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v:FindFirstChild("Owner") then
			if tostring(v.Owner.Value) == game.Players.LocalPlayer.Name then
				return v:FindFirstChildOfClass("VehicleSeat")
			end
		end
	end
	return false
end

local function CheckSeabeast()
	for i,v in pairs(game.Workspace.SeaBeasts:GetChildren()) do
		if v:FindFirstChild("HumanoidRootPart") then
			return v
		end
	end
	return false
end

function CheckPirateBoat()
	for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
		if v.Name == "PirateBasic" or v.Name == "PirateBrigade" then
			return true
		end
	end
	return false
end

-- Check Color Function

function CheckButtonColorOpen()
	local OpenAll = 0
	for i,v in pairs(game:GetService("Workspace").Map["Boat Castle"].Summoner.Circle:GetChildren()) do
		if v:IsA("Part") then
			if v:FindFirstChild("Part") and v:FindFirstChild("Part").BrickColor == BrickColor.new("Lime green") then
				OpenAll = OpenAll + 1
			end
		end
	end
	return OpenAll==3
end

local function CheckHakiColor(NameColor)
	local args = {
		[1] = "getColors"
	}

	MyHakiColor = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	for i,v in pairs(MyHakiColor) do
		if (v.HiddenName):find(NameColor) then
			if v.Unlocked then
				return v.Unlocked
			end
		end
	end
	return false
end

-- Abandoned Quest

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- Start Kaitun Farm

task.spawn(function()
    while wait(0.1) do
		local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		local MyMoney = game:GetService("Players").LocalPlayer.Data.Beli.Value
		local MyFragment = game:GetService("Players").LocalPlayer.Data.Fragments.Value
		local MyRaces = game:GetService("Players").LocalPlayer.Data.Race.Value
		if OldWorld then
			if _G.Settings["Sword"]["Pole"] and MyLevel >= 100 and not HaveItem("Pole") and HaveMob("Thunder God") then
				FindPole = true 
			else
				ReturnFarm = true
			end
		end
    end
end)

task.spawn(function()
	while task.wait() do
		if FindPole and OldWorld then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
							if v.Name == "Thunder God" then
								repeat task.wait()
									ActiveHaki()
									EquipMelee()
									toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
									StartMagnet = true
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.Transparency = 1
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									FarmPos = v.HumanoidRootPart.CFrame
									MonFarm = v.Name
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672),workspace.CurrentCamera.CFrame)
								until not FindPole or not v.Parent or v.Humanoid.Health <= 0
							end
						end
					end
				else
					toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame)
				end
			end)
		end
	end
end)

task.spawn(function()
	while wait() do
		if ReturnFarm then
			pcall(function()
				CheckQuest()
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if not string.find(QuestTitle, NameMon) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				end
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					if FastTween then
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
							toTarget(CFrameQuest)
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
							toTarget(CFrameQuest)
						end
					else
						toTarget(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
								if v.Name == Mon then
									if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
										repeat task.wait()
											ActiveHaki()       
											EquipMelee() 
											PosMon = v.HumanoidRootPart.CFrame
											MonFarm = v.Name
											StartMagnet = true
											toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 0))
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.Head.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(70,70,70)
										until not ReturnFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
									end
								end
							end
						end
					else
						toTarget(CFrameMon * CFrame.new(0, 20, 0))
						if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
							toTarget(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
						end
					end
				end
			end)
		end
	end
end)
