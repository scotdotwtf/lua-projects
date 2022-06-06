--[[

	Filename: haxedchat.lua
	
	~ Written by: spec
	~ Description: remake of chathax
	
	[*] for public use


--]]

--// make
local haxedchat = Instance.new("ScreenGui")
local drg = Instance.new("Frame")
local bg = Instance.new("Frame")
local r2 = Instance.new("UICorner")
local msgbox = Instance.new("TextBox")
local fname = Instance.new("TextBox")
local ftext = Instance.new("TextBox")
local list = Instance.new("UIListLayout")
local p2 = Instance.new("UIPadding")
local ctype = Instance.new("TextBox")
local sendbtn = Instance.new("TextButton")
local preview = Instance.new("TextButton")
local outline = Instance.new("Frame")
local r3 = Instance.new("UICorner")
local r1 = Instance.new("UICorner")
local drg_fill = Instance.new("Frame")
local close = Instance.new("TextButton")
local r4 = Instance.new("UICorner")
local name = Instance.new("TextLabel")
local p1 = Instance.new("UIPadding")
local bg_fill = Instance.new("Frame")

--// define
haxedchat.Name = "haxedchat"
haxedchat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
haxedchat.ResetOnSpawn = false

drg.Name = "drg"
drg.Parent = haxedchat
drg.BackgroundColor3 = Color3.fromRGB(48, 53, 68)
drg.BorderColor3 = Color3.fromRGB(11, 12, 15)
drg.BorderSizePixel = 0
drg.Position = UDim2.new(0.5, -187, 0.5, -100)
drg.Size = UDim2.new(0, 375, 0, 20)
drg.ZIndex = -4

bg.Name = "bg"
bg.Parent = drg
bg.BackgroundColor3 = Color3.fromRGB(11, 12, 15)
bg.BorderSizePixel = 0
bg.Position = UDim2.new(0, 0, 1, 0)
bg.Size = UDim2.new(0, 375, 0, 175)
bg.ZIndex = -5

r2.Name = "r2"
r2.Parent = bg


list.Name = "list"
list.Parent = bg
list.SortOrder = Enum.SortOrder.LayoutOrder

msgbox.Name = "msgbox"
msgbox.Parent = bg
msgbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
msgbox.BackgroundTransparency = 1.000
msgbox.Size = UDim2.new(0, 368, 0, 20)
msgbox.Font = Enum.Font.RobotoMono
msgbox.PlaceholderColor3 = Color3.fromRGB(133, 137, 162)
msgbox.PlaceholderText = "~ your text"
msgbox.Text = ""
msgbox.TextColor3 = Color3.fromRGB(176, 184, 255)
msgbox.TextSize = 14.000
msgbox.TextXAlignment = Enum.TextXAlignment.Left

fname.Name = "fname"
fname.Parent = bg
fname.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
fname.BackgroundTransparency = 1.000
fname.Position = UDim2.new(0, 0, 0.125714287, 0)
fname.Size = UDim2.new(0, 368, 0, 20)
fname.Font = Enum.Font.RobotoMono
fname.PlaceholderColor3 = Color3.fromRGB(133, 137, 162)
fname.PlaceholderText = "~ fake name"
fname.Text = ""
fname.TextColor3 = Color3.fromRGB(176, 184, 255)
fname.TextSize = 14.000
fname.TextXAlignment = Enum.TextXAlignment.Left

ftext.Name = "ftext"
ftext.Parent = bg
ftext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ftext.BackgroundTransparency = 1.000
ftext.Position = UDim2.new(0, 0, 0.251428574, 0)
ftext.Size = UDim2.new(0, 368, 0, 20)
ftext.Font = Enum.Font.RobotoMono
ftext.PlaceholderColor3 = Color3.fromRGB(133, 137, 162)
ftext.PlaceholderText = "~ fake text"
ftext.Text = ""
ftext.TextColor3 = Color3.fromRGB(176, 184, 255)
ftext.TextSize = 14.000
ftext.TextXAlignment = Enum.TextXAlignment.Left

p2.Name = "p2"
p2.Parent = bg
p2.PaddingLeft = UDim.new(0, 4)

ctype.Name = "ctype"
ctype.Parent = bg
ctype.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ctype.BackgroundTransparency = 1.000
ctype.Position = UDim2.new(0, 0, 0.377142847, 0)
ctype.Size = UDim2.new(0, 368, 0, 20)
ctype.Font = Enum.Font.RobotoMono
ctype.PlaceholderColor3 = Color3.fromRGB(133, 137, 162)
ctype.PlaceholderText = "~ type ( 1 = [] | 2 = {} | 3 = ?? )"
ctype.Text = ""
ctype.TextColor3 = Color3.fromRGB(176, 184, 255)
ctype.TextSize = 14.000
ctype.TextXAlignment = Enum.TextXAlignment.Left

sendbtn.Name = "sendbtn"
sendbtn.Parent = bg
sendbtn.BackgroundColor3 = Color3.fromRGB(48, 53, 68)
sendbtn.BackgroundTransparency = 1.000
sendbtn.BorderSizePixel = 0
sendbtn.Position = UDim2.new(0, 0, 0.502857149, 0)
sendbtn.Size = UDim2.new(0, 368, 0, 20)
sendbtn.Font = Enum.Font.RobotoMono
sendbtn.Text = "> send"
sendbtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendbtn.TextSize = 14.000
sendbtn.TextXAlignment = Enum.TextXAlignment.Left

preview.Name = "preview"
preview.Parent = bg
preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
preview.BackgroundTransparency = 1.000
preview.Position = UDim2.new(0, 0, 0.628571451, 0)
preview.Size = UDim2.new(0, 368, 0, 50)
preview.Font = Enum.Font.RobotoMono
preview.Text = "[] preview"
preview.TextColor3 = Color3.fromRGB(185, 203, 252)
preview.TextSize = 14.000
preview.TextXAlignment = Enum.TextXAlignment.Left
preview.TextYAlignment = Enum.TextYAlignment.Top

outline.Name = "outline"
outline.Parent = drg
outline.BackgroundColor3 = Color3.fromRGB(11, 12, 15)
outline.BackgroundTransparency = 1.000
outline.BorderColor3 = Color3.fromRGB(113, 125, 159)
outline.Size = UDim2.new(0, 375, 0, 195)
outline.ZIndex = -5

r3.Name = "r3"
r3.Parent = outline

r1.Name = "r1"
r1.Parent = drg

drg_fill.Name = "drg_fill"
drg_fill.Parent = drg
drg_fill.BackgroundColor3 = Color3.fromRGB(48, 53, 68)
drg_fill.BorderColor3 = Color3.fromRGB(11, 12, 15)
drg_fill.BorderSizePixel = 0
drg_fill.Position = UDim2.new(0, 0, 0.5, 0)
drg_fill.Size = UDim2.new(1, 0, 0.5, 0)
drg_fill.ZIndex = -4

close.Name = "close"
close.Parent = drg
close.BackgroundColor3 = Color3.fromRGB(255, 97, 97)
close.Position = UDim2.new(1, -17, 0, 3)
close.Size = UDim2.new(0, 14, 0, 14)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

r4.CornerRadius = UDim.new(1, 0)
r4.Name = "r4"
r4.Parent = close

name.Name = "name"
name.Parent = drg
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.BorderColor3 = Color3.fromRGB(27, 42, 53)
name.Size = UDim2.new(-0.256000012, 200, 1, 0)
name.Font = Enum.Font.Ubuntu
name.Text = "haxedchat [chathax remake]"
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.TextSize = 14.000
name.TextXAlignment = Enum.TextXAlignment.Left

p1.Name = "p1"
p1.Parent = name
p1.PaddingLeft = UDim.new(0, 6)

bg_fill.Name = "bg_fill"
bg_fill.Parent = drg
bg_fill.BackgroundColor3 = Color3.fromRGB(11, 12, 15)
bg_fill.BorderSizePixel = 0
bg_fill.Position = UDim2.new(0, 0, 1, 0)
bg_fill.Size = UDim2.new(0, 375, 0, 30)
bg_fill.ZIndex = -5

--// script
close.MouseButton1Click:Connect(function() --~ simply start with close
	haxedchat:Destroy()
end)

sendbtn.MouseButton1Click:Connect(function() --~ send code
	local function setptext(a, b)
		param1 = a
		param2 = b
	end

	if ctype.Text == "1" then
		setptext("[", "]")
	elseif ctype.Text == "2" then
		setptext("{", "}")
	elseif ctype.Text == "3" then
		setptext("?", "?")
	end 

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msgbox.Text.."                                                                                                                                                   "..param1..fname.Text..param2..": "..ftext.Text, "All")
end)

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

dragify(drg)

preview.MouseButton1Click:Connect(function() 
	preview.Text = "[*] preview\n\n["..tostring(game:GetService("Players").LocalPlayer.Name).."]: "..msgbox.Text.."\n"..tostring(param1)..fname.Text..tostring(param2)..": "..ftext.Text	
end) 
