print([[

  ██████  ██▓███  ▓█████  ▄████▄  
▒██    ▒ ▓██░  ██▒▓█   ▀ ▒██▀ ▀█  
░ ▓██▄   ▓██░ ██▓▒▒███   ▒▓█    ▄ 
  ▒   ██▒▒██▄█▓▒ ▒▒▓█  ▄ ▒▓▓▄ ▄██▒
▒██████▒▒▒██▒ ░  ░░▒████▒▒ ▓███▀ ░
▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░░░ ▒░ ░░ ░▒ ▒  ░
░ ░▒  ░ ░░▒ ░      ░ ░  ░  ░  ▒   
░  ░  ░  ░░          ░   ░        
      ░              ░  ░░ ░      
                         ░        
]])

--// bugs blur method
local Blur = loadstring(game:HttpGet("https://raw.githubusercontent.com/0zBug/Misc/main/Blur.lua"))()

--// make
local specsscripts = Instance.new("ScreenGui")
local hold = Instance.new("Frame")
local bg = Instance.new("Frame")
local scroll = Instance.new("ScrollingFrame")
local rhhold = Instance.new("Frame")
local mini = Instance.new("TextButton")
local minicorner = Instance.new("UICorner")
local slist = Instance.new("UIListLayout")
local bgcorner = Instance.new("UICorner")
local lhhold = Instance.new("Frame")
local llist = Instance.new("UIListLayout")
local name = Instance.new("TextLabel")
local npadding = Instance.new("UIPadding")
local rlist = Instance.new("UIListLayout")
local close = Instance.new("TextButton")
local closecorner = Instance.new("UICorner")
local rpadding = Instance.new("UIPadding")
--// stroke
local hcorner = Instance.new("UICorner")
local rstroke = Instance.new("UIStroke")
local gradient = Instance.new("UIGradient")

hcorner.CornerRadius = UDim.new(0, 6)
hcorner.Name = "hcorner"
hcorner.Parent = hold

rstroke.Parent = bg
rstroke.Name = "rstroke"
rstroke.Color = Color3.new(255, 255, 255)

gradient.Parent = rstroke

spawn(function()
	local counter = 0
	local w = math.pi / 25
	local CS = {}
	local num = 15
	local frames = 0

	game:GetService("RunService").Heartbeat:Connect(function()
		if math.fmod(frames, 2) == 0 then
			for i = 0, num do
				local c = Color3.fromRGB(127 * math.sin(w*i + counter) + 128, 127 * math.sin(w*i + 2 * math.pi/3 + counter) + 128, 127*math.sin(w*i + 4*math.pi/3 + counter) + 128)
				table.insert(CS, i+1, ColorSequenceKeypoint.new(i/num, c))
			end
			gradient.Color = ColorSequence.new(CS)
			CS = {}
			counter = counter + math.pi/40
			if (counter >= math.pi * 2) then
				counter = 0
			end
		end
		if frames >= 1000 then
			frames = 0
		end
		frames = frames + 1
		gradient.Rotation = gradient.Rotation + 1
	end)
end)

--// define
specsscripts.Name = "specs scripts"
specsscripts.Parent = game:GetService("CoreGui")

hold.Name = "hold"
hold.Parent = specsscripts
hold.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
hold.BackgroundTransparency = 1.000
hold.BorderSizePixel = 0
hold.Position = UDim2.new(0.13333334, 1, 0.153703704, 1)
hold.Size = UDim2.new(0, 559, 0, 23)
hold.ZIndex = 0

bg.Name = "bg"
bg.Parent = hold
bg.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
bg.BackgroundTransparency = 0.350
bg.BorderSizePixel = 0
bg.Size = UDim2.new(0, 559, 0, 334)
bg.ZIndex = 0

Blur:BindFrame(bg, {
    Transparency = 0.35, Material = Enum.Material.Glass, BrickColor = BrickColor.new('White')
})


scroll.Name = "scroll"
scroll.Parent = bg
scroll.Active = true
scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scroll.BackgroundTransparency = 1.000
scroll.BorderSizePixel = 0
scroll.Position = UDim2.new(0, 0, 0, 23)
scroll.Size = UDim2.new(1, 0, 0.991017938, -20)
scroll.BottomImage = "rbxassetid://6689849479"
scroll.MidImage = "rbxassetid://6689849479"
scroll.ScrollBarThickness = 0
scroll.TopImage = "rbxassetid://6689849479"

slist.Name = "slist"
slist.Parent = scroll
slist.HorizontalAlignment = Enum.HorizontalAlignment.Center
slist.SortOrder = Enum.SortOrder.LayoutOrder
slist.Padding = UDim.new(0, 4)

bgcorner.CornerRadius = UDim.new(0, 6)
bgcorner.Name = "bgcorner"
bgcorner.Parent = bg

lhhold.Name = "lhhold"
lhhold.Parent = hold
lhhold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lhhold.BackgroundTransparency = 1.000
lhhold.Size = UDim2.new(0, 23, 1, 0)

llist.Name = "llist"
llist.Parent = lhhold
llist.FillDirection = Enum.FillDirection.Horizontal
llist.SortOrder = Enum.SortOrder.LayoutOrder
llist.VerticalAlignment = Enum.VerticalAlignment.Center

name.Name = "name"
name.Parent = lhhold
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.Size = UDim2.new(-2.39130425, 200, 1, 0)
name.Font = Enum.Font.RobotoMono
name.Text = "specs scrips"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 16.000
name.TextXAlignment = Enum.TextXAlignment.Left

npadding.Name = "npadding"
npadding.Parent = name
npadding.PaddingLeft = UDim.new(0, 5)

rhhold.Name = "rhhold"
rhhold.Parent = hold
rhhold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rhhold.BackgroundTransparency = 1.000
rhhold.Position = UDim2.new(1, -23, 0, 0)
rhhold.Size = UDim2.new(0, 23, 1, 0)

mini.Name = "mini"
mini.Parent = rhhold
mini.BackgroundColor3 = Color3.fromRGB(163, 163, 163)
mini.BorderSizePixel = 0
mini.Position = UDim2.new(-0.600000024, 0, 0.178929865, 0)
mini.Size = UDim2.new(0, 14, 0, 14)
mini.Font = Enum.Font.SourceSans
mini.Text = ""
mini.TextColor3 = Color3.fromRGB(0, 0, 0)
mini.TextSize = 14.000

minicorner.CornerRadius = UDim.new(1, 0)
minicorner.Name = "minicorner"
minicorner.Parent = mini

rlist.Name = "rlist"
rlist.Parent = rhhold
rlist.FillDirection = Enum.FillDirection.Horizontal
rlist.HorizontalAlignment = Enum.HorizontalAlignment.Right
rlist.SortOrder = Enum.SortOrder.LayoutOrder
rlist.VerticalAlignment = Enum.VerticalAlignment.Center
rlist.Padding = UDim.new(0, 6)

close.Name = "close"
close.Parent = rhhold
close.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.261538684, 0, 0.178929865, 0)
close.Size = UDim2.new(0, 14, 0, 14)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

closecorner.CornerRadius = UDim.new(1, 0)
closecorner.Name = "closecorner"
closecorner.Parent = close

rpadding.Name = "rpadding"
rpadding.Parent = rhhold
rpadding.PaddingRight = UDim.new(0, 5)

local function makebtn(name, creds, imag, scrip)
    local scriptf = Instance.new("Frame")
    local img = Instance.new("ImageLabel")
    local imgcorner = Instance.new("UICorner")
    local imgfade = Instance.new("UIGradient")
    local sname = Instance.new("TextLabel")
    local stpadding = Instance.new("UIPadding")
    local runbtn = Instance.new("TextButton")
    local runcorner = Instance.new("UICorner")
    local scorner = Instance.new("UICorner")
    local sname_2 = Instance.new("TextLabel")
    local stpadding_2 = Instance.new("UIPadding")
    
    scriptf.Name = "scriptf"
    scriptf.Parent = scroll
    scriptf.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    scriptf.BackgroundTransparency = 0.650
    scriptf.BorderSizePixel = 0
    scriptf.Position = UDim2.new(0.017889088, 0, 0, 0)
    scriptf.Size = UDim2.new(0, 549, 0, 35)
    scriptf.ZIndex = -1
    
    img.Name = "img"
    img.Parent = scriptf
    img.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    img.BackgroundTransparency = 1.000
    img.Position = UDim2.new(1, -250, 0, 0)
    img.Size = UDim2.new(0, 250, 0, 35)
    img.ZIndex = 0
    img.Image = imag
    img.ScaleType = Enum.ScaleType.Crop
    
    imgcorner.CornerRadius = UDim.new(0, 4)
    imgcorner.Name = "imgcorner"
    imgcorner.Parent = img
    
    imgfade.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 1.00), NumberSequenceKeypoint.new(0.21, 0.89), NumberSequenceKeypoint.new(1.00, 0.00)}
    imgfade.Name = "imgfade"
    imgfade.Parent = img
    
    sname.Name = "sname"
    sname.Parent = scriptf
    sname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sname.BackgroundTransparency = 1.000
    sname.Size = UDim2.new(0, 200, 0.671000004, 0)
    sname.Font = Enum.Font.RobotoMono
    sname.Text = name
    sname.TextColor3 = Color3.fromRGB(255, 255, 255)
    sname.TextSize = 18.000
    sname.TextXAlignment = Enum.TextXAlignment.Left
    
    stpadding.Name = "stpadding"
    stpadding.Parent = sname
    stpadding.PaddingLeft = UDim.new(0, 13)
    
    runbtn.Name = "runbtn"
    runbtn.Parent = scriptf
    runbtn.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
    runbtn.BackgroundTransparency = 0.500
    runbtn.BorderSizePixel = 0
    runbtn.Position = UDim2.new(1, -30, 0.5, -13)
    runbtn.Size = UDim2.new(0, 25, 0, 25)
    runbtn.Font = Enum.Font.SourceSans
    runbtn.Text = "▶"
    runbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    runbtn.TextSize = 13.000
    
    runcorner.CornerRadius = UDim.new(0, 6)
    runcorner.Name = "runcorner"
    runcorner.Parent = runbtn
    
    scorner.Name = "scorner"
    scorner.Parent = scriptf
    
    sname_2.Name = "sname"
    sname_2.Parent = scriptf
    sname_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sname_2.BackgroundTransparency = 1.000
    sname_2.Position = UDim2.new(0, 0, 0.54285717, -2)
    sname_2.Size = UDim2.new(0, 200, 0.514285743, 0)
    sname_2.Font = Enum.Font.RobotoMono
    sname_2.Text = creds
    sname_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    sname_2.TextSize = 14.000
    sname_2.TextXAlignment = Enum.TextXAlignment.Left
    
    stpadding_2.Name = "stpadding"
    stpadding_2.Parent = sname_2
    stpadding_2.PaddingBottom = UDim.new(0, 3)
    stpadding_2.PaddingLeft = UDim.new(0, 13)
    
    local scrip = scrip or function() end
	runbtn.MouseButton1Click:connect(function()
		pcall(scrip)
	end)
end

--// scripts
close.MouseButton1Click:Connect(function()
    hold.Position = UDim2.new(10, 0, 10, 0)
    wait()
end)

mini.MouseButton1Click:Connect(function()
    if bg.Visible == true then
        hold.Transparency = 0.5
        bg.Visible = false
    else
        hold.Transparency = 1
        bg.Visible = true
    end
end)

spawn(function()
	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		local dragSpeed = 0.125
		dragInput = nil
		dragStart = nil
		local dragPos = nil
		function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

    dragify(hold)
end)

makebtn("hi mom", "by me", "rbxassetid://6736905584", function()
    print("Hello World!")
end)
