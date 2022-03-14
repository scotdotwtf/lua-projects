warn("ayo this is fd (filtering disabled) so no one is gonna see it but its cool anyways")
--[[

	// FileName: LOLHOO.lua
	// Written by: spec
	// Description: fucks games up
	
	!! NOT FOR PUBLIC USE !!
	
]]

game:GetService("Lighting").FogEnd = 100
game:GetService("Lighting").Brightness = 0.5
game:GetService("Lighting").ClockTime = 0

game:GetService("Lighting").FogColor = Color3.new(0, 0, 0)

local decalID = "1016220518"

local cweepysound1 = Instance.new("Sound")
local cweepysound2 = Instance.new("Sound")
local scawyskybox = Instance.new("Sky")

cweepysound1.Playing = false
cweepysound2.Looped = true
cweepysound2.Volume = 10
cweepysound1.Parent = game.Workspace
cweepysound1.SoundId = "rbxassetid://678930213"

cweepysound2.Playing = false
cweepysound2.Looped = true
cweepysound2.Volume = 10
cweepysound2.Parent = game.Workspace
cweepysound2.SoundId = "rbxassetid://5160426025"

scawyskybox.Name = "scawyuwux3"
scawyskybox.Parent = game:GetService("Lighting")
scawyskybox.SkyboxBk = "http://www.roblox.com/asset/?id="..decalID
scawyskybox.SkyboxDn = "http://www.roblox.com/asset/?id="..decalID
scawyskybox.SkyboxFt = "http://www.roblox.com/asset/?id="..decalID
scawyskybox.SkyboxLf = "http://www.roblox.com/asset/?id="..decalID
scawyskybox.SkyboxRt = "http://www.roblox.com/asset/?id="..decalID
scawyskybox.SkyboxUp = "http://www.roblox.com/asset/?id="..decalID	

function LOLOKAY(pos1,pos2,pos3,pos4)
	local LOLWAIT = Instance.new("ScreenGui")
	local LOLWHEN = Instance.new("ImageLabel")
	local close = Instance.new("TextButton")

	LOLWAIT.Name = "LOLWAIT"
	LOLWAIT.Parent = game:GetService("CoreGui")
	LOLWAIT.ResetOnSpawn = false

	LOLWHEN.Name = "LOLWHEN"
	LOLWHEN.Parent = LOLWAIT
	LOLWHEN.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LOLWHEN.BackgroundTransparency = 1.000
	LOLWHEN.BorderSizePixel = 0
	LOLWHEN.Size = UDim2.new(0, 480, 0, 298)
	LOLWHEN.Position = UDim2.new(pos1,pos2,pos3,pos4)
	LOLWHEN.ZIndex = 999999998
	LOLWHEN.Image = "rbxassetid://8387667205"
	LOLWHEN.Active = true
	LOLWHEN.Draggable = true

	close.Name = "close"
	close.Parent = LOLWHEN
	close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	close.BackgroundTransparency = 1.000
	close.BorderSizePixel = 0
	close.Position = UDim2.new(0, 396, 0, 38)
	close.Size = UDim2.new(0, 46, 0, 30)
	close.ZIndex = 999999999
	close.Font = Enum.Font.SourceSans
	close.Text = ""
	close.TextColor3 = Color3.fromRGB(0, 0, 0)
	close.TextSize = 14.000
	
	close.MouseButton1Click:Connect(function()
		LOLWAIT:Destroy()
	end)	
end

function LOLHOO(root)
	for _, v in pairs(root:GetChildren()) do
		if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
			v.Parent = nil
		elseif v:IsA("BasePart") then
			v.Material = "Plastic"
			v.Transparency = 0
			local One = Instance.new("Decal", v)
			local Two = Instance.new("Decal", v)
			local Three = Instance.new("Decal", v)
			local Four = Instance.new("Decal", v)
			local Five = Instance.new("Decal", v)
			local Six = Instance.new("Decal", v)
			One.Texture = "http://www.roblox.com/asset/?id="..decalID
			Two.Texture = "http://www.roblox.com/asset/?id="..decalID
			Three.Texture = "http://www.roblox.com/asset/?id="..decalID
			Four.Texture = "http://www.roblox.com/asset/?id="..decalID
			Five.Texture = "http://www.roblox.com/asset/?id="..decalID
			Six.Texture = "http://www.roblox.com/asset/?id="..decalID
			One.Face = "Front"
			Two.Face = "Back"
			Three.Face = "Right"
			Four.Face = "Left"
			Five.Face = "Top"
			Six.Face = "Bottom"
		end
		LOLHOO(v)
	end
end

function LOLHOW(root)
	for _, v in pairs(root:GetChildren()) do
		LOLHOW(v)
	end
end

LOLHOO(game:GetService("Workspace"))
LOLHOW(game:GetService("Workspace"))

cweepysound1:Play()
cweepysound2:Play()

function LOLPLS(name)
	--mains
	game:GetService("Workspace").Name = name
	game:GetService("Players").Name = name
	game:GetService("Lighting").Name = name
	game:GetService("MaterialService").Name = name
	game:GetService("ReplicatedFirst").Name = name
	game:GetService("ReplicatedStorage").Name = name
	game:GetService("ServerScriptService").Name = name
	game:GetService("ServerStorage").Name = name
	game:GetService("StarterGui").Name = name
	game:GetService("StarterPack").Name = name
	game:GetService("ServerStorage").Name = name
	game:GetService("StarterPlayer").Name = name
	game:GetService("SoundService").Name = name
	game:GetService("Chat").Name = name
	game:GetService("LocalizationService").Name = name
	game:GetService("TestService").Name = name
	--others
	game:GetService("Teams").Name = name
	game:GetService("NetworkClient").Name = name
end

while wait(1) do
	LOLPLS("LOLHOW")
	print("LOLHOW")
	LOLOKAY(0,math.random(0, 1550),0,math.random(0, 700))
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "LOLHOO?";
		Text = "LOL?HOO?LOL?WHAT?LOL?HOW?LOL?NOO?LOL?HOO?LOL?WHAT?LOL?HOW?LOL?NOO?";
		Duration = 666;
	})
	wait(0.1)
	warn("LOLHOO")
	LOLPLS("LOWHOO")
end
