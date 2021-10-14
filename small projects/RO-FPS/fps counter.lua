-- // ~ ui by spec ~ //

-- // ~ this shit makes the ui elements
local FPS = Instance.new("ScreenGui") 
local fps_counter = Instance.new("TextLabel")
local corner = Instance.new("UICorner")

-- // ~ this is the properties for the ui elements
FPS.Name = "FPS"
FPS.Parent = game:GetService("CoreGui")

fps_counter.Name = "fps_counter"
fps_counter.Parent = FPS
fps_counter.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fps_counter.BackgroundTransparency = 0.500
fps_counter.BorderSizePixel = 0
fps_counter.Position = UDim2.new(0, 104, 0, -32)
fps_counter.Size = UDim2.new(0, 75, 0, 32)
fps_counter.Font = Enum.Font.Gotham
fps_counter.Text = "FPS | 60"
fps_counter.TextColor3 = Color3.fromRGB(255, 255, 255)
fps_counter.TextSize = 14.000

corner.Name = "corner"
corner.Parent = fps_counter

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

while wait(0.25) do
	fps_counter.Text = "FPS | "..tostring(FPS) 
end