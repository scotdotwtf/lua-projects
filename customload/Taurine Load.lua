--// funni taurine loading screen by spec
local getasset = getsynasset or getcustomasset
makefolder("loadingimages")
writefile("loadingimages/taurine.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/customload/images/taurine.png"))
--// make
local funniload = Instance.new("ScreenGui")
local taurineload = Instance.new("Frame")
local gradient = Instance.new("UIGradient")
local logo = Instance.new("ImageLabel")

--// define
funniload.Name = "funniload"
funniload.Parent = game:WaitForChild("CoreGui")

taurineload.Name = "taurineload"
taurineload.Parent = funniload
taurineload.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
taurineload.BorderSizePixel = 0
taurineload.Position = UDim2.new(0, -50, 0, -50)
taurineload.Size = UDim2.new(1, 100, 1, 100)
taurineload.ZIndex = 0

gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(246, 86, 86)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(50, 60, 242))}
gradient.Rotation = 66
gradient.Name = "gradient"
gradient.Parent = taurineload

logo.Name = "logo"
logo.Parent = taurineload
logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
logo.BackgroundTransparency = 1.000
logo.Position = UDim2.new(0.5, -166, 0.5, -31)
logo.Size = UDim2.new(0, 333, 0, 62)
logo.Image = getasset("loadingimages/taurine.png")
logo.ZIndex = 1

--// scrip
spawn(function()
    while funniload.Enabled == true do
        wait(0.1)
        gradient.Rotation = gradient.Rotation + 1
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
