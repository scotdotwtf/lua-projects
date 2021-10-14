-- // ~ ui and bypasses by spec ~ //

-- // ~ makes elements
local specskeyboardr = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local impostersus = Instance.new("TextButton")
local isshadow = Instance.new("Frame")
local istext = Instance.new("TextLabel")
local dobc = Instance.new("TextButton")
local dobcshadow = Instance.new("Frame")
local dobctext = Instance.new("TextLabel")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local closeshadow = Instance.new("Frame")
local closetext = Instance.new("TextLabel")
local hint = Instance.new("TextLabel")
local minimax = Instance.new("TextButton")
local minimaxshadow = Instance.new("Frame")
local minimaxtext = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local mainshadow = Instance.new("Frame")
local lmaobybg = Instance.new("Frame")
local lmaoshadow = Instance.new("Frame")
local lmaotbox = Instance.new("TextBox")
local yiffbybg = Instance.new("Frame")
local yiffshadow = Instance.new("Frame")
local yifftbox = Instance.new("TextBox")
local tfbybg = Instance.new("Frame")
local tfshadow = Instance.new("Frame")
local tftbox = Instance.new("TextBox")
local cumbybg = Instance.new("Frame")
local cumshadow = Instance.new("Frame")
local cumtbox = Instance.new("TextBox")

-- // ~ properties for elements
specskeyboardr.Name = "specskeyboardr"
specskeyboardr.Parent = game:GetService("CoreGui")

main.Name = "main"
main.Parent = specskeyboardr
main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.807812452, 0, 0.777777791, 0)
main.Size = UDim2.new(0.186458334, 0, 0.208333328, 0)
main.ZIndex = 0

impostersus.Name = "impostersus"
impostersus.Parent = main
impostersus.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
impostersus.BorderSizePixel = 0
impostersus.Position = UDim2.new(0.511173189, 0, 0.75999999, 0)
impostersus.Size = UDim2.new(0.466480434, 0, 0.177777782, 0)
impostersus.ZIndex = 2
impostersus.Font = Enum.Font.GothamSemibold
impostersus.Text = ""
impostersus.TextColor3 = Color3.fromRGB(255, 255, 255)
impostersus.TextScaled = true
impostersus.TextSize = 14.000
impostersus.TextWrapped = true

isshadow.Name = "isshadow"
isshadow.Parent = impostersus
isshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
isshadow.BorderSizePixel = 0
isshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
isshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

istext.Name = "istext"
istext.Parent = impostersus
istext.AnchorPoint = Vector2.new(0.5, 0.5)
istext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
istext.BackgroundTransparency = 1.000
istext.BorderColor3 = Color3.fromRGB(27, 42, 53)
istext.BorderSizePixel = 0
istext.Position = UDim2.new(0.508982062, 0, 0.524999976, 0)
istext.Size = UDim2.new(0.886227548, 0, 0.550000012, 0)
istext.ZIndex = 2
istext.Font = Enum.Font.GothamSemibold
istext.Text = "imposter sus"
istext.TextColor3 = Color3.fromRGB(255, 255, 255)
istext.TextScaled = true
istext.TextSize = 14.000
istext.TextWrapped = true

dobc.Name = "dobc"
dobc.Parent = main
dobc.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
dobc.BorderSizePixel = 0
dobc.Position = UDim2.new(0.0223463681, 0, 0.75999999, 0)
dobc.Size = UDim2.new(0.466480434, 0, 0.177777782, 0)
dobc.ZIndex = 2
dobc.Font = Enum.Font.GothamSemibold
dobc.Text = ""
dobc.TextColor3 = Color3.fromRGB(255, 255, 255)
dobc.TextScaled = true
dobc.TextSize = 14.000
dobc.TextWrapped = true

dobcshadow.Name = "dobcshadow"
dobcshadow.Parent = dobc
dobcshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
dobcshadow.BorderSizePixel = 0
dobcshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
dobcshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

dobctext.Name = "dobctext"
dobctext.Parent = dobc
dobctext.AnchorPoint = Vector2.new(0.5, 0.5)
dobctext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dobctext.BackgroundTransparency = 1.000
dobctext.BorderColor3 = Color3.fromRGB(27, 42, 53)
dobctext.BorderSizePixel = 0
dobctext.Position = UDim2.new(0.508982062, 0, 0.524999976, 0)
dobctext.Size = UDim2.new(0.886227548, 0, 0.550000012, 0)
dobctext.ZIndex = 2
dobctext.Font = Enum.Font.GothamSemibold
dobctext.Text = "dark old bc"
dobctext.TextColor3 = Color3.fromRGB(255, 255, 255)
dobctext.TextScaled = true
dobctext.TextSize = 14.000
dobctext.TextWrapped = true

title.Name = "title"
title.Parent = main
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(27, 42, 53)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.289804459, 0, 0.0844444409, 0)
title.Size = UDim2.new(0.537709475, 0, 0.0977777764, 0)
title.ZIndex = 2
title.Font = Enum.Font.GothamSemibold
title.Text = "specs keyboard [r]"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

close.Name = "close"
close.Parent = main
close.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.851955295, 0, 0.0355555564, 0)
close.Size = UDim2.new(0.125698328, 0, 0.177777782, 0)
close.ZIndex = 2
close.Font = Enum.Font.GothamSemibold
close.Text = ""
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextScaled = true
close.TextSize = 14.000
close.TextWrapped = true

closeshadow.Name = "closeshadow"
closeshadow.Parent = close
closeshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
closeshadow.BorderSizePixel = 0
closeshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
closeshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

closetext.Name = "closetext"
closetext.Parent = close
closetext.AnchorPoint = Vector2.new(0.5, 0.5)
closetext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closetext.BackgroundTransparency = 1.000
closetext.BorderColor3 = Color3.fromRGB(27, 42, 53)
closetext.BorderSizePixel = 0
closetext.Position = UDim2.new(0.5, 0, 0.524999976, 0)
closetext.Size = UDim2.new(1, 0, 0.550000012, 0)
closetext.ZIndex = 2
closetext.Font = Enum.Font.GothamSemibold
closetext.Text = "X"
closetext.TextColor3 = Color3.fromRGB(255, 255, 255)
closetext.TextScaled = true
closetext.TextSize = 14.000
closetext.TextWrapped = true

hint.Name = "hint"
hint.Parent = main
hint.AnchorPoint = Vector2.new(0.5, 0.5)
hint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hint.BackgroundTransparency = 1.000
hint.BorderColor3 = Color3.fromRGB(27, 42, 53)
hint.BorderSizePixel = 0
hint.Position = UDim2.new(0.326815635, 0, 0.173333332, 0)
hint.Size = UDim2.new(0.611731827, 0, 0.0755555555, 0)
hint.ZIndex = 2
hint.Font = Enum.Font.GothamSemibold
hint.Text = "private and good bypasses"
hint.TextColor3 = Color3.fromRGB(255, 255, 255)
hint.TextScaled = true
hint.TextSize = 14.000
hint.TextWrapped = true
hint.TextXAlignment = Enum.TextXAlignment.Left

minimax.Name = "minimax"
minimax.Parent = main
minimax.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
minimax.BorderSizePixel = 0
minimax.Position = UDim2.new(0.699999988, 0, 0.0355555564, 0)
minimax.Size = UDim2.new(0.125698328, 0, 0.177777782, 0)
minimax.ZIndex = 2
minimax.Font = Enum.Font.GothamSemibold
minimax.Text = ""
minimax.TextColor3 = Color3.fromRGB(255, 255, 255)
minimax.TextScaled = true
minimax.TextSize = 14.000
minimax.TextWrapped = true

minimaxshadow.Name = "minimaxshadow"
minimaxshadow.Parent = minimax
minimaxshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
minimaxshadow.BorderSizePixel = 0
minimaxshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
minimaxshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

minimaxtext.Name = "minimaxtext"
minimaxtext.Parent = minimax
minimaxtext.AnchorPoint = Vector2.new(0.5, 0.5)
minimaxtext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimaxtext.BackgroundTransparency = 1.000
minimaxtext.BorderColor3 = Color3.fromRGB(27, 42, 53)
minimaxtext.BorderSizePixel = 0
minimaxtext.Position = UDim2.new(0.5, 0, 0.695335388, 0)
minimaxtext.Size = UDim2.new(1, 0, 0.890670002, 0)
minimaxtext.ZIndex = 2
minimaxtext.Font = Enum.Font.GothamSemibold
minimaxtext.Text = "-"
minimaxtext.TextColor3 = Color3.fromRGB(255, 255, 255)
minimaxtext.TextScaled = true
minimaxtext.TextSize = 35.000
minimaxtext.TextWrapped = true

UITextSizeConstraint.Parent = minimaxtext
UITextSizeConstraint.MaxTextSize = 35

mainshadow.Name = "mainshadow"
mainshadow.Parent = main
mainshadow.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
mainshadow.BorderSizePixel = 0
mainshadow.Position = UDim2.new(0, 0, 0.0427859165, 0)
mainshadow.Size = UDim2.new(1, 0, 0.983880758, 0)
mainshadow.ZIndex = -1

lmaobybg.Name = "lmaobybg"
lmaobybg.Parent = main
lmaobybg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
lmaobybg.BorderSizePixel = 0
lmaobybg.Position = UDim2.new(0.0219999999, 0, 0.523999989, 0)
lmaobybg.Size = UDim2.new(0.465999991, 0, 0.178000003, 0)
lmaobybg.ZIndex = 2

lmaoshadow.Name = "lmaoshadow"
lmaoshadow.Parent = lmaobybg
lmaoshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
lmaoshadow.BorderSizePixel = 0
lmaoshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
lmaoshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

lmaotbox.Name = "lmaotbox"
lmaotbox.Parent = lmaobybg
lmaotbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lmaotbox.BackgroundTransparency = 1.000
lmaotbox.Position = UDim2.new(0.0544545352, 0, 0.224999964, 0)
lmaotbox.Size = UDim2.new(0.885999978, 0, 0.550000012, 0)
lmaotbox.ZIndex = 2
lmaotbox.ClearTextOnFocus = false
lmaotbox.Font = Enum.Font.Gotham
lmaotbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
lmaotbox.Text = "Łmao"
lmaotbox.TextColor3 = Color3.fromRGB(255, 255, 255)
lmaotbox.TextScaled = true
lmaotbox.TextSize = 14.000
lmaotbox.TextWrapped = true

yiffbybg.Name = "yiffbybg"
yiffbybg.Parent = main
yiffbybg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
yiffbybg.BorderSizePixel = 0
yiffbybg.Position = UDim2.new(0.510999978, 0, 0.523999989, 0)
yiffbybg.Size = UDim2.new(0.465999991, 0, 0.178000003, 0)
yiffbybg.ZIndex = 2

yiffshadow.Name = "yiffshadow"
yiffshadow.Parent = yiffbybg
yiffshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
yiffshadow.BorderSizePixel = 0
yiffshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
yiffshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

yifftbox.Name = "yifftbox"
yifftbox.Parent = yiffbybg
yifftbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
yifftbox.BackgroundTransparency = 1.000
yifftbox.Position = UDim2.new(0.0544545352, 0, 0.224999964, 0)
yifftbox.Size = UDim2.new(0.885999978, 0, 0.550000012, 0)
yifftbox.ZIndex = 2
yifftbox.ClearTextOnFocus = false
yifftbox.Font = Enum.Font.Gotham
yifftbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
yifftbox.Text = "yŕff"
yifftbox.TextColor3 = Color3.fromRGB(255, 255, 255)
yifftbox.TextScaled = true
yifftbox.TextSize = 14.000
yifftbox.TextWrapped = true

tfbybg.Name = "tfbybg"
tfbybg.Parent = main
tfbybg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
tfbybg.BorderSizePixel = 0
tfbybg.Position = UDim2.new(0.0219999999, 0, 0.280000001, 0)
tfbybg.Size = UDim2.new(0.465999991, 0, 0.178000003, 0)
tfbybg.ZIndex = 2

tfshadow.Name = "tfshadow"
tfshadow.Parent = tfbybg
tfshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
tfshadow.BorderSizePixel = 0
tfshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
tfshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

tftbox.Name = "tftbox"
tftbox.Parent = tfbybg
tftbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tftbox.BackgroundTransparency = 1.000
tftbox.Position = UDim2.new(0.0544545352, 0, 0.224999964, 0)
tftbox.Size = UDim2.new(0.885999978, 0, 0.550000012, 0)
tftbox.ZIndex = 2
tftbox.ClearTextOnFocus = false
tftbox.Font = Enum.Font.Gotham
tftbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
tftbox.Text = "Ŧf"
tftbox.TextColor3 = Color3.fromRGB(255, 255, 255)
tftbox.TextScaled = true
tftbox.TextSize = 14.000
tftbox.TextWrapped = true

cumbybg.Name = "cumbybg"
cumbybg.Parent = main
cumbybg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
cumbybg.BorderSizePixel = 0
cumbybg.Position = UDim2.new(0.510999978, 0, 0.280000001, 0)
cumbybg.Size = UDim2.new(0.465999991, 0, 0.178000003, 0)
cumbybg.ZIndex = 2

cumshadow.Name = "cumshadow"
cumshadow.Parent = cumbybg
cumshadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
cumshadow.BorderSizePixel = 0
cumshadow.Position = UDim2.new(0, 0, 0.0406700149, 0)
cumshadow.Size = UDim2.new(1, 0, 1.10000002, 0)

cumtbox.Name = "cumtbox"
cumtbox.Parent = cumbybg
cumtbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cumtbox.BackgroundTransparency = 1.000
cumtbox.Position = UDim2.new(0.0544545352, 0, 0.224999964, 0)
cumtbox.Size = UDim2.new(0.885999978, 0, 0.550000012, 0)
cumtbox.ZIndex = 2
cumtbox.ClearTextOnFocus = false
cumtbox.Font = Enum.Font.Gotham
cumtbox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
cumtbox.Text = "てum"
cumtbox.TextColor3 = Color3.fromRGB(255, 255, 255)
cumtbox.TextScaled = true
cumtbox.TextSize = 14.000
cumtbox.TextWrapped = true

-- // ~ scripts
close.MouseButton1Click:connect(function()
	specskeyboardr:Destroy()
end)


minimax.MouseButton1Click:connect(function()
	if minimaxtext.Text == "-" then
		minimaxtext.Position = UDim2.new(0.5, 0, 0.695335388, 0)
		minimaxtext.Size = UDim2.new(1, 0, 0.890670002, 0)
		minimaxtext.Text = "^"

		UITextSizeConstraint.Parent = minimaxtext
		UITextSizeConstraint.MaxTextSize = 35

		main.Position = UDim2.new(0.808, 0, 0.937, 0)
	else
		minimaxtext.Position = UDim2.new(0.5, 0, 0.493750006, 0)
		minimaxtext.Size = UDim2.new(1, 0, 0.987499356, 0)
		minimaxtext.Text = "-"

		UITextSizeConstraint.Parent = minimaxtext
		UITextSizeConstraint.MaxTextSize = 25

		main.Position = UDim2.new(0.808, 0, 0.778, 0)
	end
end)


impostersus.MouseButton1Click:connect(function()
	local messages = {"when", "the", "imposter", "is", "sus"}
	for index, message in ipairs(messages) do
		wait(.01)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
	end
end)

dobc.MouseButton1Click:connect(function()
	game.Chat.BubbleChatEnabled = false
	wait(0.01)
	game.Chat.BubbleChatEnabled = true

	local ChatService = game:GetService("Chat")

	local Settings = {
		BubbleDuration = 10,
		MaxBubbles = 3,
		BackgroundColor3 = Color3.fromRGB(25, 25, 25),
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 22,
		Font = Enum.Font.SourceSans,
		Transparency = 0,
		CornerRadius = UDim.new(0, 5),
		TailVisible = true,
		Padding = 6,
		MaxWidth = 300,
		VerticalStudsOffset = .5,
		BubblesSpacing = 9,
		MinimizeDistance = 40,
		MaxDistance = 100,
		AdorneeName = "Head",
	}

	pcall(function()
		ChatService.BubbleChatEnabled = true
		ChatService:SetBubbleChatSettings(Settings)
	end)
end)
