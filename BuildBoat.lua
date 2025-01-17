
-- [ Buying Base ] --



_G.Tool = {

	["Painting Tool"] = "Painting Tool",

	["Binding Tool"] = "Binding Tool",

	["Property Tool"] = "Property Tool",

	["Scaling Tool"] = "Scaling Tool",

	["Trowel Tool"] = "Trowel Tool",

}



game:GetService('RunService').Stepped:connect(function()

	if _G.Settings["Item"]["Buy Item"] then

		workspace.ItemBoughtFromShop:InvokeServer(_G.Settings["Item"]["Select"],1)

	end 

end)



game:GetService('RunService').Stepped:connect(function()

	if _G.Settings["Item"]["Buy Tool"] then

		workspace.ItemBoughtFromShop:InvokeServer(_G.Tool["Painting Tool"],1)

		workspace.ItemBoughtFromShop:InvokeServer(_G.Tool["Binding Tool"],1)

		workspace.ItemBoughtFromShop:InvokeServer(_G.Tool["Property Tool"],1)

		workspace.ItemBoughtFromShop:InvokeServer(_G.Tool["Scaling Tool"],1)

		workspace.ItemBoughtFromShop:InvokeServer(_G.Tool["Trowel Tool"],1)

	end 

end)



_G.Code = {

	["hi"] = "hi",

	["Squid Army"] = "Squid Army",

	["=D"] = "=D",

	["=P"] = "=P",

	["chillthrill709 was here"] = "chillthrill709 was here",

}



game:GetService('RunService').Stepped:connect(function()

	if _G.Settings["Redeem All Code"] then

		workspace.CheckCodeFunction:InvokeServer(_G.Code["hi"])

		workspace.CheckCodeFunction:InvokeServer(_G.Code["Squid Army"])

		workspace.CheckCodeFunction:InvokeServer(_G.Code["=D"])

		workspace.CheckCodeFunction:InvokeServer(_G.Code["=P"])

		workspace.CheckCodeFunction:InvokeServer(_G.Code["chillthrill709 was here"])

	end

end)



-- [ Notify ] --



local HttpService = game:GetService("HttpService")

local Data = {

	["embeds"] = {

		{

			["title"] = "**Picture Hub Kaitun**",

			["color"] = tonumber("0x02FF51"),

			["fields"] = {

				{

					["name"] = "User Name",

					["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",

					["inline"] = true

				},

				{

					["name"] = "Gold",

					["value"] = tostring(game:GetService("Players").LocalPlayer.Data.Gold.Value),

					["inline"] = true

				},

			}              

		}

	}

}

local Headers = {["Content-Type"] = "application/json"}

local Encoded = HttpService:JSONEncode(Data)

local Request = http_request or request or HttpPost or syn.request



task.spawn(function()

    while wait(_G.Settings["Notify"]["Send Every ... Second"]) do

	    pcall(function()

		    if _G.Settings["Notify"]["Enabled"] then

			    local MyGold = game:GetService("Players").LocalPlayer.Data.Gold.Value

			    if MyGold >= _G.Settings["Notify"]["Amount"] then

                    local WebHookUrl = {Url = _G.Settings["Notify"]["Url"], Body = Encoded, Method = "POST", Headers = Headers}

                    Request(WebHookUrl)             

			    end

		    end

	    end)

    end

end)



-- [ Graphic ] --



if _G.Settings["Graphic"]["Disable 3D Rendering"] then

	game:GetService("RunService"):Set3dRenderingEnabled(false)

	Set3dRendering = false

end

game:GetService("UserInputService").InputBegan:Connect(function(input, isTyping)

	if not isTyping then

		if input.KeyCode == Enum.KeyCode.P then

			if Set3dRendering then

				game:GetService("RunService"):Set3dRenderingEnabled(false)

				Set3dRendering = false

			else

				game:GetService("RunService"):Set3dRenderingEnabled(true)

				Set3dRendering = true

			end

		end

	end

end)



if _G.Settings["Graphic"]["Low Quality Graphic"] then

	local decalsyeeted = true

	local g = game

	local w = g.Workspace

	local l = g.Lighting

	local t = w.Terrain

	t.WaterWaveSize = 0

	t.WaterWaveSpeed = 0

	t.WaterReflectance = 0

	t.WaterTransparency = 0

	l.GlobalShadows = false

	l.FogEnd = 9e9

	l.Brightness = 0

	settings().Rendering.QualityLevel = "Level01"

	for i, v in pairs(g:GetDescendants()) do

		if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then

			v.Material = "Plastic"

			v.Reflectance = 0

		elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then

			v.Transparency = 1

		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then

			v.Lifetime = NumberRange.new(0)

		elseif v:IsA("Explosion") then

			v.BlastPressure = 1

			v.BlastRadius = 1

		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then

			v.Enabled = false

		elseif v:IsA("MeshPart") then

			v.Material = "Plastic"

			v.Reflectance = 0

			v.TextureID = 10385902758728957

		end

	end

	for i, e in pairs(l:GetChildren()) do

		if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then

			e.Enabled = false

		end

	end

end



spawn(function()

	game:GetService('RunService').Heartbeat:Connect(function()

		if(not(type(_G.Settings["Graphic"]["FPS Cap"])=='number'))then

			setfpscap(240)

		else

			setfpscap(_G.Settings["Graphic"]["FPS Cap"])

		end

	end)

end)



-- [ Setting ] --



spawn(function()

	while wait() do

		if _G.Settings["Setting"]["Disconnect"]["Rejoin"] then

			_G.Settings["Setting"]["Disconnect"]["Rejoin"] = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)

				if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then

					game:GetService("TeleportService"):Teleport(game.PlaceId)

				end

			end)

		end

	end

end)



spawn(function()

	while wait() do

		pcall(function()

			if _G.Settings["AFK"]["AFK Checking"] then

				local player = game.Players.LocalPlayer

				local LastMove = tick()

				local function Checking()

					if tick() - LastMove > tonumber(_G.Settings["AFK"]["Time"]) then 

						game:GetService("TeleportService"):Teleport(game.PlaceId)

						print("User Got Kicked Reason : AFK Checking.")

						warn("User Got Kicked Reason : AFK Checking.")

					end

				end

				game.Players.LocalPlayer.CharacterAdded:Connect(function()

					LastMove = tick()

					game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()

						LastMove = tick()

					end)

				end)

				while wait() do

					Checking()

				end

			end

		end)

	end

end)



-- [ Start Kaitun ] --



task.spawn(function()

	while wait() do

		pcall(function()

			if _G.Settings["Select Type"] == "Fast Farm" and _G.Settings["Start Kaitun"] then

				-- [ BodyVelocity Function ] --

				local BodyGyro = Instance.new("BodyVelocity")

				BodyGyro.Name = "BodyClip"

				BodyGyro.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

				BodyGyro.MaxForce = Vector3.new(100, 100, 100) * math.huge

				BodyGyro.Velocity = Vector3.new(0,0,0)

				-- [ toTarget Function ] --

				local TweenService = game:GetService("TweenService")

				local toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 70, 0)})

				local TweenService = game:GetService("TweenService")

				-- [ Travelling Function ] --

				toTarget:Play()

				task.wait(1.6)

				local toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-59.152435302734375, 95.01837158203125, 8500.4814453125)})

				toTarget:Play()

				task.wait(1.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-59.09392166137695, -357.79449462890625, 9483.427734375)})

				toTarget:Play()

				task.wait(0.5)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)})

				toTarget:Play()

				task.wait(15) 

				_G.Settings["Start Kaitun"] = false

				task.wait(1) 

				_G.Settings["Start Kaitun"] = true

			elseif _G.Settings["Select Type"] == "Premium Farm" and _G.Settings["Start Kaitun"] then

				-- [ BodyVelocity Function ] --

				local BodyGyro = Instance.new("BodyVelocity")

				BodyGyro.Name = "BodyClip"

				BodyGyro.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

				BodyGyro.MaxForce = Vector3.new(100, 100, 100) * math.huge

				BodyGyro.Velocity = Vector3.new(0,0,0)

				-- [ toTarget Function ] --

				local TweenService = game:GetService("TweenService")

				local toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.Sand.CFrame + Vector3.new(0, 70, 0)})

				local TweenService = game:GetService("TweenService")

				-- [ Travelling Function ] --

				toTarget:Play()

				task.wait(1.8)

				local toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage2.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage3.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage4.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage5.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)

				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage6.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage7.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage8.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = game:GetService("Workspace").BoatStages.NormalStages.CaveStage9.Sand.CFrame + Vector3.new(0, 80, 0)})

				toTarget:Play()

				task.wait(1.9)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-59.152435302734375, 95.01837158203125, 8500.4814453125)})

				toTarget:Play()

				task.wait(1.9)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-59.09392166137695, -357.79449462890625, 9483.427734375)})

				toTarget:Play()

				task.wait(0.7)



				toTarget = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 

					{CFrame = CFrame.new(-55.9123649597168, -357.9725646972656, 9490.365234375)})

				toTarget:Play()

				print("Build A Boat Status : Completed Quest Claim Gold!")

				task.wait(18) 

				_G.Settings["Start Kaitun"] = false

				task.wait(1) 

				_G.Settings["Start Kaitun"] = true

			end

		end)

	end

end)
