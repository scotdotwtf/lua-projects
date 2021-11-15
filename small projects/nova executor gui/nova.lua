--// this is taking forever //--

--// make stuf
local nova = Instance.new("ScreenGui")
local draggingframe1 = Instance.new("Frame")
local mainframe1 = Instance.new("Frame")
local maincorner = Instance.new("UICorner")
local leftbottemframeholder1 = Instance.new("Frame")
local toprightcorner = Instance.new("UIListLayout")
local executebutton = Instance.new("TextButton")
local clearbutton = Instance.new("TextButton")
local scripthubbutton = Instance.new("TextButton")
local scripthubcontainer = Instance.new("Frame")
local shubcorner = Instance.new("UICorner")
local shubname1 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local shubscroll = Instance.new("ScrollingFrame")
local shubbox1 = Instance.new("Frame")
local shubcorner_2 = Instance.new("UICorner")
local infiniteyieldimg = Instance.new("ImageLabel")
local transparencygradient1 = Instance.new("UIGradient")
local infiniteyieldbutton = Instance.new("TextButton")
local UIPadding = Instance.new("UIPadding")
local shubbox2 = Instance.new("Frame")
local shubcorner_3 = Instance.new("UICorner")
local deximg = Instance.new("ImageLabel")
local transparencygradient1_2 = Instance.new("UIGradient")
local dexbutton = Instance.new("TextButton")
local UIPadding_2 = Instance.new("UIPadding")
local shubbox3 = Instance.new("Frame")
local shubcorner_4 = Instance.new("UICorner")
local unnamedespimg = Instance.new("ImageLabel")
local transparencygradient1_3 = Instance.new("UIGradient")
local unnamedespbutton = Instance.new("TextButton")
local UIPadding_3 = Instance.new("UIPadding")
local shubbox4 = Instance.new("Frame")
local shubcorner_5 = Instance.new("UICorner")
local hbrewadminimg = Instance.new("ImageLabel")
local transparencygradient1_4 = Instance.new("UIGradient")
local hbrewadminbutton = Instance.new("TextButton")
local UIPadding_4 = Instance.new("UIPadding")
local gridlayout = Instance.new("UIGridLayout")
local scrolltbox = Instance.new("ScrollingFrame")
local tbox1 = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local righttopcornerholder1 = Instance.new("Frame")
local toprightcorner_2 = Instance.new("UIListLayout")
local minimizebutton = Instance.new("TextButton")
local minimizecorner1 = Instance.new("UICorner")
local minimizepadding1 = Instance.new("UIPadding")
local closebutton = Instance.new("TextButton")
local closecorner1 = Instance.new("UICorner")
local closepadding1 = Instance.new("UIPadding")
local games = Instance.new("ImageButton")
local scripttitle1 = Instance.new("TextLabel")

--// define stuf
nova.Name = "nova"
nova.Parent = game:GetService("CoreGui")

draggingframe1.Name = "draggingframe1"
draggingframe1.Parent = nova
draggingframe1.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
draggingframe1.BorderSizePixel = 0
draggingframe1.Position = UDim2.new(0.186979175, -314, 0.0620370209, -15)
draggingframe1.Size = UDim2.new(0, 629, 0, 30)

mainframe1.Name = "mainframe1"
mainframe1.Parent = draggingframe1
mainframe1.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
mainframe1.BorderSizePixel = 0
mainframe1.Size = UDim2.new(0, 629, 0, 347)
mainframe1.ZIndex = 0

maincorner.Name = "maincorner"
maincorner.Parent = mainframe1

leftbottemframeholder1.Name = "leftbottemframeholder1"
leftbottemframeholder1.Parent = mainframe1
leftbottemframeholder1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
leftbottemframeholder1.BackgroundTransparency = 1.000
leftbottemframeholder1.Position = UDim2.new(0.00899999961, 0, 0.926512957, 0)
leftbottemframeholder1.Size = UDim2.new(0, 0, 0, 25)
leftbottemframeholder1.ZIndex = 0

toprightcorner.Name = "toprightcorner"
toprightcorner.Parent = leftbottemframeholder1
toprightcorner.FillDirection = Enum.FillDirection.Horizontal
toprightcorner.SortOrder = Enum.SortOrder.LayoutOrder
toprightcorner.VerticalAlignment = Enum.VerticalAlignment.Center
toprightcorner.Padding = UDim.new(0, 5)

executebutton.Name = "executebutton"
executebutton.Parent = leftbottemframeholder1
executebutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
executebutton.BackgroundTransparency = 1.000
executebutton.Position = UDim2.new(0, 0, 0.159999996, 0)
executebutton.Size = UDim2.new(0, 52, 0, 17)
executebutton.Font = Enum.Font.Gotham
executebutton.Text = "Execute"
executebutton.TextColor3 = Color3.fromRGB(255, 74, 86)
executebutton.TextSize = 12.000

clearbutton.Name = "clearbutton"
clearbutton.Parent = leftbottemframeholder1
clearbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
clearbutton.BackgroundTransparency = 1.000
clearbutton.Position = UDim2.new(0, 0, 0.159999996, 0)
clearbutton.Size = UDim2.new(0, 36, 0, 17)
clearbutton.Font = Enum.Font.Gotham
clearbutton.Text = "Clear"
clearbutton.TextColor3 = Color3.fromRGB(255, 74, 86)
clearbutton.TextSize = 12.000

scripthubbutton.Name = "scripthubbutton"
scripthubbutton.Parent = leftbottemframeholder1
scripthubbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scripthubbutton.BackgroundTransparency = 1.000
scripthubbutton.Position = UDim2.new(0, 0, 0.159999996, 0)
scripthubbutton.Size = UDim2.new(0, 68, 0, 17)
scripthubbutton.Font = Enum.Font.Gotham
scripthubbutton.Text = "Script Hub"
scripthubbutton.TextColor3 = Color3.fromRGB(255, 74, 86)
scripthubbutton.TextSize = 12.000

scripthubcontainer.Name = "scripthubcontainer"
scripthubcontainer.Parent = mainframe1
scripthubcontainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
scripthubcontainer.BackgroundTransparency = 0.500
scripthubcontainer.BorderSizePixel = 0
scripthubcontainer.Size = UDim2.new(1, 0, 1, 0)
scripthubcontainer.Visible = false
scripthubcontainer.ZIndex = 4

shubcorner.Name = "shubcorner"
shubcorner.Parent = scripthubcontainer

shubname1.Name = "shubname1"
shubname1.Parent = scripthubcontainer
shubname1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shubname1.BackgroundTransparency = 1.000
shubname1.BorderSizePixel = 0
shubname1.Position = UDim2.new(0.00794912595, 0, 0.0144092217, 0)
shubname1.Size = UDim2.new(0, 135, 0, 38)
shubname1.ZIndex = 5
shubname1.Font = Enum.Font.RobotoMono
shubname1.Text = "Script Hub"
shubname1.TextColor3 = Color3.fromRGB(255, 255, 255)
shubname1.TextSize = 24.000

TextButton.Parent = scripthubcontainer
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.90302068, 0, 0.0144092217, 0)
TextButton.Size = UDim2.new(0, 44, 0, 29)
TextButton.ZIndex = 8
TextButton.Font = Enum.Font.RobotoMono
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 15.000
TextButton.TextStrokeColor3 = Color3.fromRGB(5, 5, 5)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextXAlignment = Enum.TextXAlignment.Right

shubscroll.Name = "shubscroll"
shubscroll.Parent = scripthubcontainer
shubscroll.Active = true
shubscroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
shubscroll.BackgroundTransparency = 1.000
shubscroll.BorderSizePixel = 0
shubscroll.Position = UDim2.new(0.0111287758, 0, 0.123919308, 0)
shubscroll.Size = UDim2.new(0, 617, 0, 299)
shubscroll.ZIndex = 5
shubscroll.BottomImage = "rbxassetid://6708455541"
shubscroll.MidImage = "rbxassetid://6689849479"
shubscroll.TopImage = "rbxassetid://6708456551"
shubscroll.ScrollBarImageTransparency = 0.75
shubscroll.ScrollBarThickness = 20

shubbox1.Name = "shubbox1"
shubbox1.Parent = shubscroll
shubbox1.BackgroundColor3 = Color3.fromRGB(161, 72, 66)
shubbox1.BackgroundTransparency = 0.500
shubbox1.ClipsDescendants = true
shubbox1.Size = UDim2.new(0, 192, 0, 152)
shubbox1.ZIndex = 6

shubcorner_2.CornerRadius = UDim.new(0, 3)
shubcorner_2.Name = "shubcorner"
shubcorner_2.Parent = shubbox1

infiniteyieldimg.Name = "infiniteyieldimg"
infiniteyieldimg.Parent = shubbox1
infiniteyieldimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infiniteyieldimg.BackgroundTransparency = 1.000
infiniteyieldimg.Position = UDim2.new(-0.46899271, 0, -0.0616438352, 0)
infiniteyieldimg.Size = UDim2.new(0, 298, 0, 168)
infiniteyieldimg.ZIndex = 7
infiniteyieldimg.Image = "rbxassetid://4836290275"

transparencygradient1.Rotation = -120
transparencygradient1.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.17, 0.05), NumberSequenceKeypoint.new(0.36, 0.22), NumberSequenceKeypoint.new(0.74, 0.77), NumberSequenceKeypoint.new(0.92, 0.93), NumberSequenceKeypoint.new(1.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
transparencygradient1.Name = "transparencygradient1"
transparencygradient1.Parent = infiniteyieldimg

infiniteyieldbutton.Name = "infiniteyieldbutton"
infiniteyieldbutton.Parent = infiniteyieldimg
infiniteyieldbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infiniteyieldbutton.BackgroundTransparency = 1.000
infiniteyieldbutton.Position = UDim2.new(0.308673114, 0, 0.0535714291, 0)
infiniteyieldbutton.Size = UDim2.new(0.647651017, 0, 0.869047642, 0)
infiniteyieldbutton.ZIndex = 8
infiniteyieldbutton.Font = Enum.Font.RobotoMono
infiniteyieldbutton.Text = "Infinite Yield"
infiniteyieldbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
infiniteyieldbutton.TextSize = 29.000
infiniteyieldbutton.TextWrapped = true
infiniteyieldbutton.TextXAlignment = Enum.TextXAlignment.Left
infiniteyieldbutton.TextYAlignment = Enum.TextYAlignment.Top

UIPadding.Parent = infiniteyieldbutton
UIPadding.PaddingLeft = UDim.new(0, 13)
UIPadding.PaddingTop = UDim.new(0, 10)

shubbox2.Name = "shubbox2"
shubbox2.Parent = shubscroll
shubbox2.BackgroundColor3 = Color3.fromRGB(161, 72, 66)
shubbox2.BackgroundTransparency = 0.500
shubbox2.ClipsDescendants = true
shubbox2.Position = UDim2.new(0.323843777, 0, 0, 0)
shubbox2.Size = UDim2.new(0, 192, 0, 152)
shubbox2.ZIndex = 6

shubcorner_3.CornerRadius = UDim.new(0, 3)
shubcorner_3.Name = "shubcorner"
shubcorner_3.Parent = shubbox2

deximg.Name = "deximg"
deximg.Parent = shubbox2
deximg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
deximg.BackgroundTransparency = 1.000
deximg.Position = UDim2.new(-0.46899271, 0, -0.0616438352, 0)
deximg.Size = UDim2.new(0, 298, 0, 168)
deximg.ZIndex = 7
deximg.Image = "rbxassetid://85221092"
deximg.ImageTransparency = 0.500
deximg.ScaleType = Enum.ScaleType.Tile
deximg.TileSize = UDim2.new(1, 0, 2, 0)

transparencygradient1_2.Rotation = -120
transparencygradient1_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.17, 0.05), NumberSequenceKeypoint.new(0.36, 0.22), NumberSequenceKeypoint.new(0.74, 0.77), NumberSequenceKeypoint.new(0.92, 0.93), NumberSequenceKeypoint.new(1.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
transparencygradient1_2.Name = "transparencygradient1"
transparencygradient1_2.Parent = deximg

dexbutton.Name = "dexbutton"
dexbutton.Parent = deximg
dexbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dexbutton.BackgroundTransparency = 1.000
dexbutton.Position = UDim2.new(0.308673114, 0, 0.0535714291, 0)
dexbutton.Size = UDim2.new(0.647651017, 0, 0.869047642, 0)
dexbutton.ZIndex = 8
dexbutton.Font = Enum.Font.RobotoMono
dexbutton.Text = "Dex    Explorer"
dexbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
dexbutton.TextSize = 29.000
dexbutton.TextWrapped = true
dexbutton.TextXAlignment = Enum.TextXAlignment.Left
dexbutton.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_2.Parent = dexbutton
UIPadding_2.PaddingLeft = UDim.new(0, 13)
UIPadding_2.PaddingTop = UDim.new(0, 10)

shubbox3.Name = "shubbox3"
shubbox3.Parent = shubscroll
shubbox3.BackgroundColor3 = Color3.fromRGB(161, 72, 66)
shubbox3.BackgroundTransparency = 0.500
shubbox3.ClipsDescendants = true
shubbox3.Position = UDim2.new(0.647687554, 0, 0, 0)
shubbox3.Size = UDim2.new(0, 192, 0, 152)
shubbox3.ZIndex = 6

shubcorner_4.CornerRadius = UDim.new(0, 3)
shubcorner_4.Name = "shubcorner"
shubcorner_4.Parent = shubbox3

unnamedespimg.Name = "unnamedespimg"
unnamedespimg.Parent = shubbox3
unnamedespimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unnamedespimg.BackgroundTransparency = 1.000
unnamedespimg.Position = UDim2.new(-0.46899271, 0, -0.0616438352, 0)
unnamedespimg.Size = UDim2.new(0, 298, 0, 168)
unnamedespimg.ZIndex = 7
unnamedespimg.Image = "http://www.roblox.com/asset/?id=8001144108"
unnamedespimg.ImageTransparency = 0.500
unnamedespimg.ScaleType = Enum.ScaleType.Tile
unnamedespimg.TileSize = UDim2.new(1.60000002, 0, 1, 0)

transparencygradient1_3.Rotation = -120
transparencygradient1_3.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.17, 0.05), NumberSequenceKeypoint.new(0.36, 0.22), NumberSequenceKeypoint.new(0.74, 0.77), NumberSequenceKeypoint.new(0.92, 0.93), NumberSequenceKeypoint.new(1.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
transparencygradient1_3.Name = "transparencygradient1"
transparencygradient1_3.Parent = unnamedespimg

unnamedespbutton.Name = "unnamedespbutton"
unnamedespbutton.Parent = unnamedespimg
unnamedespbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
unnamedespbutton.BackgroundTransparency = 1.000
unnamedespbutton.Position = UDim2.new(0.305317432, 0, 0.0535714291, 0)
unnamedespbutton.Size = UDim2.new(0.647651017, 0, 0.869047642, 0)
unnamedespbutton.ZIndex = 8
unnamedespbutton.Font = Enum.Font.RobotoMono
unnamedespbutton.Text = "Unnamed      ESP"
unnamedespbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
unnamedespbutton.TextSize = 29.000
unnamedespbutton.TextWrapped = true
unnamedespbutton.TextXAlignment = Enum.TextXAlignment.Left
unnamedespbutton.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_3.Parent = unnamedespbutton
UIPadding_3.PaddingLeft = UDim.new(0, 13)
UIPadding_3.PaddingTop = UDim.new(0, 10)

shubbox4.Name = "shubbox4"
shubbox4.Parent = shubscroll
shubbox4.BackgroundColor3 = Color3.fromRGB(161, 72, 66)
shubbox4.BackgroundTransparency = 0.500
shubbox4.ClipsDescendants = true
shubbox4.Position = UDim2.new(0.323843777, 0, 0, 0)
shubbox4.Size = UDim2.new(0, 192, 0, 152)
shubbox4.ZIndex = 6

shubcorner_5.CornerRadius = UDim.new(0, 3)
shubcorner_5.Name = "shubcorner"
shubcorner_5.Parent = shubbox4

hbrewadminimg.Name = "hbrewadminimg"
hbrewadminimg.Parent = shubbox4
hbrewadminimg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hbrewadminimg.BackgroundTransparency = 1.000
hbrewadminimg.Position = UDim2.new(-0.46899271, 0, -0.0616438352, 0)
hbrewadminimg.Size = UDim2.new(0, 298, 0, 168)
hbrewadminimg.ZIndex = 7
hbrewadminimg.Image = "rbxassetid://8001459228"
hbrewadminimg.ImageTransparency = 0.500
hbrewadminimg.ScaleType = Enum.ScaleType.Slice

transparencygradient1_4.Rotation = -120
transparencygradient1_4.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.17, 0.05), NumberSequenceKeypoint.new(0.36, 0.22), NumberSequenceKeypoint.new(0.74, 0.77), NumberSequenceKeypoint.new(0.92, 0.93), NumberSequenceKeypoint.new(1.00, 1.00), NumberSequenceKeypoint.new(1.00, 0.00)}
transparencygradient1_4.Name = "transparencygradient1"
transparencygradient1_4.Parent = hbrewadminimg

hbrewadminbutton.Name = "hbrewadminbutton"
hbrewadminbutton.Parent = hbrewadminimg
hbrewadminbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hbrewadminbutton.BackgroundTransparency = 1.000
hbrewadminbutton.Position = UDim2.new(0.308673143, 0, 0.0535714291, 0)
hbrewadminbutton.Size = UDim2.new(0.647651017, 0, 0.869047642, 0)
hbrewadminbutton.ZIndex = 8
hbrewadminbutton.Font = Enum.Font.RobotoMono
hbrewadminbutton.Text = "Homebrew Admin"
hbrewadminbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
hbrewadminbutton.TextSize = 29.000
hbrewadminbutton.TextWrapped = true
hbrewadminbutton.TextXAlignment = Enum.TextXAlignment.Left
hbrewadminbutton.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_4.Parent = hbrewadminbutton
UIPadding_4.PaddingLeft = UDim.new(0, 13)
UIPadding_4.PaddingTop = UDim.new(0, 10)

gridlayout.Name = "gridlayout"
gridlayout.Parent = shubscroll
gridlayout.SortOrder = Enum.SortOrder.LayoutOrder
gridlayout.CellSize = UDim2.new(0, 194, 0, 146)

scrolltbox.Name = "scrolltbox"
scrolltbox.Parent = mainframe1
scrolltbox.Active = true
scrolltbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrolltbox.BackgroundTransparency = 1.000
scrolltbox.BorderSizePixel = 0
scrolltbox.Position = UDim2.new(0.00700000022, 0, 0.0909999982, 0)
scrolltbox.Size = UDim2.new(0, 620, 0, 290)
scrolltbox.CanvasSize = UDim2.new(2, 0, 100, 0)
scrolltbox.BottomImage = "rbxassetid://6708455541"
scrolltbox.MidImage = "rbxassetid://6689849479"
scrolltbox.TopImage = "rbxassetid://6708456551"
scrolltbox.ScrollBarImageTransparency = 0.75


tbox1.Name = "tbox1"
tbox1.Parent = scrolltbox
tbox1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tbox1.BackgroundTransparency = 1.000
tbox1.BorderSizePixel = 0
tbox1.Size = UDim2.new(1, 0, 1, 0)
tbox1.ClearTextOnFocus = false
tbox1.Font = Enum.Font.RobotoMono
tbox1.MultiLine = true
tbox1.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
tbox1.PlaceholderText = "-- enj0y --"
tbox1.Text = ""
tbox1.TextColor3 = Color3.fromRGB(255, 74, 86)
tbox1.TextSize = 14.000
tbox1.TextXAlignment = Enum.TextXAlignment.Left
tbox1.TextYAlignment = Enum.TextYAlignment.Top

UICorner.Parent = draggingframe1

righttopcornerholder1.Name = "righttopcornerholder1"
righttopcornerholder1.Parent = draggingframe1
righttopcornerholder1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
righttopcornerholder1.BackgroundTransparency = 1.000
righttopcornerholder1.Position = UDim2.new(1, -5, 0.5, -15)
righttopcornerholder1.Size = UDim2.new(0, 0, 0, 30)
righttopcornerholder1.ZIndex = 0

toprightcorner_2.Name = "toprightcorner"
toprightcorner_2.Parent = righttopcornerholder1
toprightcorner_2.FillDirection = Enum.FillDirection.Horizontal
toprightcorner_2.HorizontalAlignment = Enum.HorizontalAlignment.Right
toprightcorner_2.SortOrder = Enum.SortOrder.LayoutOrder
toprightcorner_2.VerticalAlignment = Enum.VerticalAlignment.Center
toprightcorner_2.Padding = UDim.new(0, 5)

minimizebutton.Name = "minimizebutton"
minimizebutton.Parent = righttopcornerholder1
minimizebutton.BackgroundColor3 = Color3.fromRGB(255, 74, 86)
minimizebutton.BackgroundTransparency = 1.000
minimizebutton.BorderSizePixel = 0
minimizebutton.Position = UDim2.new(0.952305257, 0, 0, 0)
minimizebutton.Size = UDim2.new(0, 20, 0, 20)
minimizebutton.ZIndex = 2
minimizebutton.Font = Enum.Font.Roboto
minimizebutton.Text = "-"
minimizebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizebutton.TextSize = 14.000

minimizecorner1.CornerRadius = UDim.new(0, 10)
minimizecorner1.Name = "minimizecorner1"
minimizecorner1.Parent = minimizebutton

minimizepadding1.Name = "minimizepadding1"
minimizepadding1.Parent = minimizebutton
minimizepadding1.PaddingBottom = UDim.new(0, 1)
minimizepadding1.PaddingLeft = UDim.new(0, 1)

closebutton.Name = "closebutton"
closebutton.Parent = righttopcornerholder1
closebutton.BackgroundColor3 = Color3.fromRGB(255, 74, 86)
closebutton.BackgroundTransparency = 1.000
closebutton.BorderSizePixel = 0
closebutton.Position = UDim2.new(0.904610515, 0, 0, 0)
closebutton.Size = UDim2.new(0, 20, 0, 20)
closebutton.ZIndex = 2
closebutton.Font = Enum.Font.RobotoMono
closebutton.Text = "+"
closebutton.TextColor3 = Color3.fromRGB(255, 255, 255)
closebutton.TextSize = 14.000

closecorner1.CornerRadius = UDim.new(0, 10)
closecorner1.Name = "closecorner1"
closecorner1.Parent = closebutton

closepadding1.Name = "closepadding1"
closepadding1.Parent = closebutton
closepadding1.PaddingBottom = UDim.new(0, 1)

games.Name = "games"
games.Parent = draggingframe1
games.BackgroundTransparency = 1.000
games.LayoutOrder = 5
games.Position = UDim2.new(0, 4, 0.5, -10)
games.Size = UDim2.new(0, 20, 0, 20)
games.ZIndex = 2
games.Image = "rbxassetid://3926305904"
games.ImageColor3 = Color3.fromRGB(255, 74, 86)
games.ImageRectOffset = Vector2.new(424, 4)
games.ImageRectSize = Vector2.new(36, 36)

scripttitle1.Name = "scripttitle1"
scripttitle1.Parent = draggingframe1
scripttitle1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scripttitle1.BackgroundTransparency = 1.000
scripttitle1.BorderSizePixel = 0
scripttitle1.Position = UDim2.new(0.5, -100, 0, 0)
scripttitle1.Size = UDim2.new(0, 200, 1, 0)
scripttitle1.Font = Enum.Font.RobotoMono
scripttitle1.Text = "nova - gamebar - 10:10"
scripttitle1.TextColor3 = Color3.fromRGB(255, 255, 255)
scripttitle1.TextSize = 14.000

--// scripts //--
	
--// close tweens
local TweenService = game:GetService"TweenService"
	
closebutton.MouseEnter:Connect(function()
	local tween = TweenService:Create(
		closebutton,
		TweenInfo.new(0.5),
		{
				BackgroundTransparency = 0
		}
	)
	tween:Play()
end)
	
closebutton.MouseLeave:Connect(function()
	local tween = TweenService:Create(
		closebutton,
		TweenInfo.new(0.5),
		{
			BackgroundTransparency = 1
		}
	)
	tween:Play()
end)

--// minimize tweens
minimizebutton.MouseEnter:Connect(function()
	local tween = TweenService:Create(
		minimizebutton,
		TweenInfo.new(0.5),
		{
			BackgroundTransparency = 0
		}
	)
	tween:Play()
end)

minimizebutton.MouseLeave:Connect(function()
	local tween = TweenService:Create(
		minimizebutton,
		TweenInfo.new(0.5),
		{
			BackgroundTransparency = 1
		}
	)
	tween:Play()
end)

--// shub
scripthubbutton.MouseButton1Click:Connect(function()
	scripthubcontainer.Visible = true
end)

TextButton.MouseButton1Click:Connect(function()
	scripthubcontainer.Visible = false
end)

--// close/minimize
closebutton.MouseButton1Click:Connect(function()
	nova:Destroy()
end)

minimizebutton.MouseButton1Click:Connect(function()
	if mainframe1.Visible == false then
		mainframe1.Visible = true
	else
		mainframe1.Visible = false
	end
end)

--// executor
executebutton.MouseButton1Click:Connect(function()
	local Source, Error = pcall(function()
	loadstring(tbox1.Text)()
	end)
	
	if not Source then
		warn(Error)
	end
end)

clearbutton.MouseButton1Click:Connect(function()
	tbox1.Text = ""	
end)

--// shub buttons
infiniteyieldbutton.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

dexbutton.MouseButton1Click:Connect(function()
	local Dex = rawget(game:GetObjects("rbxassetid://3567096419"), 0X1)
	if type(syn) == "table" and type(syn.protect_gui) == "function" then
		xpcall(syn.protect_gui, warn, Dex)
	end
	Dex.Name, Dex.Parent = "SynapseDex", game:GetService("CoreGui")
	function Load(x)
		if x:IsA("Script") then
			xpcall(coroutine.wrap(function()
				local Fenv, FenvMt, RealFenv, Func = {}, {}, {
					script = x
				}, loadstring(x.Source, "=" .. x:GetFullName())
				FenvMt.__index = function(a, b)
					if RealFenv[b] == nil then
						return getfenv()[b]
					else
						return RealFenv[b]
					end
				end
				FenvMt.__newindex = function(a, b, c)
					if RealFenv[b] == nil then
						getfenv()[b] = c
					else
						RealFenv[b] = c
					end
				end
				setmetatable(Fenv, FenvMt)
				setfenv(Func, Fenv)
				return Func()
			end), warn)
		end
		for _, v in pairs(x:GetChildren()) do
			xpcall(Load, warn, v)
		end
	end
	xpcall(Load, warn, Dex)
end)

unnamedespbutton.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
end)

hbrewadminbutton.MouseButton1Click:Connect(function()
	_G.CustomUI = false
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
end)

--// name/time
local hour = os.date("!*t")["hour"]
local min = os.date("!*t")["min"]
scripttitle1.Text = "nova - gamebar - "..hour..":"..min

--// drag
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

dragify(draggingframe1)