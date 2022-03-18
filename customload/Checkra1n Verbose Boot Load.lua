--// funni checkra1n loading screen by spec
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/checkra1nlogo.png", game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/customload/images/checkra1n.png"))

--// make
local funniload = Instance.new("ScreenGui")
local checkra1n = Instance.new("Frame")
local logo = Instance.new("ImageLabel")
local contain = Instance.new("Frame")
local layout = Instance.new("UIListLayout")
local padding = Instance.new("UIPadding")


--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

checkra1n.Name = "checkra1n"
checkra1n.Parent = funniload
checkra1n.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
checkra1n.BorderSizePixel = 0
checkra1n.Position = UDim2.new(0, -50, 0, -50)
checkra1n.Size = UDim2.new(1, 100, 1, 100)

logo.Name = "logo"
logo.Parent = checkra1n
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.Position = UDim2.new(0.5, -55, 0.5, -74)
logo.Size = UDim2.new(0, 110, 0, 149)
logo.Image = getasset("loadingimages/checkra1nlogo.png")

contain.Name = "contain"
contain.Parent = checkra1n
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
	tex.Font = Enum.Font.Arcade
	tex.Text = "# "..text
	tex.TextColor3 = Color3.fromRGB(255, 255, 255)
	tex.TextSize = 14.000
	tex.TextXAlignment = Enum.TextXAlignment.Left
	
	wait(0.025)
end

local tex2make = {"==================","","checkbl0x 0.9.5", "", "Proudly written in vscode", "(c) 69-420 spec", "", "This software is not for sale", "If you have purchased this, please", "report the seller.", "", "Get it for free at https://spec-is-cool.tk/pages/checkbl0x.html", "", "=== Made by ===", "spec", "=== Thanks to ===", "skid", "Cellebrite (uhh)", "==================", "Enabling HAX ... done!", "UHH: Found nothing"}

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
