local tbar = game:GetService("CoreGui").ThemeProvider.TopBarFrame

tbar.Transparency = 1
tbar.BorderSizePixel = 0
tbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

tbar.LeftFrame.MenuIcon.Background.Image = ""
tbar.LeftFrame.MenuIcon.Background.Icon.Image = "http://www.roblox.com/asset/?id=8390562623"
tbar.LeftFrame.ChatIcon.Background.Image = ""
tbar.LeftFrame.Position = UDim2.new(0, 2, 0, -2)

tbar.RightFrame.Position = UDim2.new(1, 0, 0, 0)
tbar.RightFrame.MoreMenu.OpenButton.Image = ""

tbar.LeftFrame.MenuIcon.Background.StateOverlay.Image = "http://www.roblox.com/asset/?id=6689849479"
tbar.LeftFrame.ChatIcon.Background.StateOverlay.Image = "http://www.roblox.com/asset/?id=6689849479"
tbar.RightFrame.MoreMenu.OpenButton.StateOverlay.Image = "http://www.roblox.com/asset/?id=6689849479"

local fps_counter = Instance.new("TextLabel")

fps_counter.Name = "fps_counter"
fps_counter.Parent = tbar.RightFrame
fps_counter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fps_counter.BackgroundTransparency = 1
fps_counter.BorderSizePixel = 0
fps_counter.Position = UDim2.new(0, 104, 0, -32)
fps_counter.Size = UDim2.new(0, 75, 0, 32)
fps_counter.Font = Enum.Font.Gotham
fps_counter.Text = "FPS | 60"
fps_counter.TextColor3 = Color3.fromRGB(255, 255, 255)
fps_counter.TextSize = 14.000

-- // ~ script from a free model lmao ~ //
local FPS = 0

local Tiempo = tick()

spawn(function()
	while game:GetService("RunService").RenderStepped:wait() do
		local Transcurrido = math.abs(Tiempo-tick())
		Tiempo = tick()
		FPS = math.floor(1/Transcurrido)
	end
end)

while wait(0.1) do
	fps_counter.Text = "FPS | "..tostring(FPS) 
end
