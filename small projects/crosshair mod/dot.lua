--// ~ simple crosshair by spec ~ //--

--// ~ settings

local white = true --// ~ set to false for black crosshair
local gta4outline = true --// ~ set to true for gta 4 type crosshair

--// ~ make crosshair

local crosshair = Instance.new("ScreenGui")
local imgframe = Instance.new("ImageLabel")

crosshair.Name = "crosshair"
crosshair.Parent = game:GetService("CoreGui")

imgframe.Name = "imgframe"
imgframe.Parent = crosshair
imgframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imgframe.BackgroundTransparency = 1.000
imgframe.BorderSizePixel = 0
imgframe.Position = UDim2.new(0.473958343, 0, 0.453703701, 0)
imgframe.Size = UDim2.new(0, 100, 0, 100)

if white == true then
imgframe.ImageColor3 = Color3.fromRGB(255, 255, 255)
else
imgframe.ImageColor3 = Color3.fromRGB(0, 0, 0) 
end

if gta4outline == true then
imgframe.Image = "rbxassetid://7186920346"
else
imgframe.Image = "rbxassetid://7186867321"   
end