--// funni taurine loading screen by spec
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/murf.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/customload/images/kingroblox.png"))

--// make
local funniload = Instance.new("ScreenGui")
local merf = Instance.new("ImageLabel")
local contain = Instance.new("Frame")
local layout = Instance.new("UIListLayout")
local padding = Instance.new("UIPadding")
local Frame = Instance.new("Frame")

--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

merf.Name = "merf"
merf.Parent = funniload
merf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
merf.Position = UDim2.new(0, -50, 0, -50)
merf.Size = UDim2.new(1, 100, 1, 100)
merf.ZIndex = -1
merf.Image = "rbxassetid://9133744176"

contain.Name = "contain"
contain.Parent = merf
contain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contain.BackgroundTransparency = 1.000
contain.Position = UDim2.new(0.377735049, 0, 0.533898354, 0)
contain.Size = UDim2.new(0, 493, 0, 100)

layout.Name = "layout"
layout.Parent = contain
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.SortOrder = Enum.SortOrder.LayoutOrder

padding.Name = "padding"
padding.Parent = contain
padding.PaddingLeft = UDim.new(0, 5)
padding.PaddingTop = UDim.new(0, 4)

Frame.Parent = merf
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.291584164, 0, 0.511016965, 0)
Frame.Size = UDim2.new(0, 840, 0, 263)
Frame.ZIndex = 0

--// scrip
local function maketex(text)
	local tex = Instance.new("TextLabel")

	tex.Name = "tex"
	tex.Parent = contain
	tex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tex.BackgroundTransparency = 1.000
	tex.Size = UDim2.new(0, 200, 0, 20)
	tex.Font = Enum.Font.GothamSemibold
	tex.Text = "> "..text
	tex.TextColor3 = Color3.fromRGB(255, 255, 0)
	tex.TextSize = 18.000

	wait(0.025)
end

local tex2make = {"merf on top", "merf gang", "twitch.tv/justmerfstreams", "king of roblox ↑ ", "subscribe to merf", "merfs pro", "merf the goat", "we ♥ merf", "merf winnin", "100% 🔥🔥🔥"}

spawn(function()
	for i, v in pairs(tex2make) do
		maketex(v)
	end
end)

local LoadingGui = game:WaitForChild("CoreGui"):WaitForChild("RobloxLoadingGui")
LoadingGui.Enabled = false
LoadingGui:Destroy()

if not game:IsLoaded() then
	game.Loaded:Wait()
end

funniload.Enabled = false
funniload:Destroy()
