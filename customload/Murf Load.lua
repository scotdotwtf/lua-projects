--// funni taurine loading screen by spec
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/murf.png", game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/customload/images/kingroblox.png"))

--// make
local funniload = Instance.new("ScreenGui")
local murf = Instance.new("ImageLabel")
local contain = Instance.new("Frame")
local layout = Instance.new("UIListLayout")
local padding = Instance.new("UIPadding")

--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

murf.Name = "murf"
murf.Parent = funniload
murf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
murf.Position = UDim2.new(0, -50, 0, -50)
murf.Size = UDim2.new(1, 100, 1, 100)
murf.ZIndex = 0
murf.Image = getasset("loadingimages/murf.png")

contain.Name = "contain"
contain.Parent = murf
contain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contain.BackgroundTransparency = 1.000
contain.Position = UDim2.new(0.0247647353, 0, 0.0423728824, -37)
contain.Size = UDim2.new(0, 100, 0, 100)

layout.Name = "layout"
layout.Parent = contain
layout.SortOrder = Enum.SortOrder.LayoutOrder

padding.Name = "padding"
padding.Parent = contain
padding.PaddingLeft = UDim.new(0, 5)
padding.PaddingTop = UDim.new(0, 4)

--// scrip
local function maketex(text)
	local tex = Instance.new("TextLabel")

	tex.Name = "tex"
	tex.Parent = contain
	tex.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tex.BackgroundTransparency = 1.000
	tex.Size = UDim2.new(0, 200, 0, 15)
	tex.Font = Enum.Font.Code
	tex.Text = "> "..text
	tex.TextColor3 = Color3.fromRGB(255, 255, 0)
	tex.TextSize = 14.000
	tex.TextXAlignment = Enum.TextXAlignment.Left

	wait(0.025)
end

local tex2make = {"murf on top", "murf gang", "twitch.tv/justmerfstreams", "king of roblox ↑ ", "subscribe to murf", "murfs pro", "murf the goat", "we ♥ murf", "murf winnin", "100% 🔥🔥🔥"}

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
