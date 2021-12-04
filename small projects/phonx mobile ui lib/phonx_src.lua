local lib = {}

function lib:start(tname_lib)
	--// make
	local phonxlib = Instance.new("ScreenGui")
	local WindowHolder = Instance.new("Frame")
	local WindowListLayout = Instance.new("UIListLayout")
	local HubName = Instance.new("Frame")
	local Container = Instance.new("Frame")
	local Scroll = Instance.new("ScrollingFrame")
	local ListLayout = Instance.new("UIListLayout")
	local Name = Instance.new("TextLabel")
	local KeepTextSize = Instance.new("UIAspectRatioConstraint")
	local Close = Instance.new("ImageButton")
	local Hide = Instance.new("ImageButton")

	--// define
	phonxlib.Name = "phonxlib"
	phonxlib.Parent = game.CoreGui

	WindowHolder.Name = "WindowHolder"
	WindowHolder.Parent = phonxlib
	WindowHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowHolder.BackgroundTransparency = 1.000
	WindowHolder.BorderSizePixel = 0
	WindowHolder.Size = UDim2.new(0.952035487, 0, 0.240641713, 0)

	WindowListLayout.Name = "WindowListLayout"
	WindowListLayout.Parent = WindowHolder
	WindowListLayout.FillDirection = Enum.FillDirection.Horizontal
	WindowListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	WindowListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	WindowListLayout.Padding = UDim.new(0.00999999978, 0)

	HubName.Name = "HubName"
	HubName.Parent = WindowHolder
	HubName.BackgroundColor3 = Color3.fromRGB(73, 152, 255)
	HubName.BorderSizePixel = 0
	HubName.Position = UDim2.new(0.683393896, 0, -0.00180894695, 0)
	HubName.Size = UDim2.new(0, 136, 0, 34)
	HubName.ZIndex = 0

	Container.Name = "Container"
	Container.Parent = HubName
	Container.BackgroundColor3 = Color3.fromRGB(37, 121, 223)
	Container.BorderSizePixel = 0
	Container.Position = UDim2.new(0, 0, 4.25747473e-08, 0)
	Container.Size = UDim2.new(0, 136, 0, 161)
	Container.ZIndex = -1

	Scroll.Name = "Scroll"
	Scroll.Parent = Container
	Scroll.Active = true
	Scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Scroll.BackgroundTransparency = 1.000
	Scroll.BorderSizePixel = 0
	Scroll.Position = UDim2.new(0, 0, 0.217696354, 0)
	Scroll.Size = UDim2.new(0, 135, 0, 126)
	Scroll.BottomImage = "rbxassetid://6689849479"
	Scroll.MidImage = "rbxassetid://6689849479"
	Scroll.TopImage = "rbxassetid://6689849479"

	ListLayout.Name = "ListLayout"
	ListLayout.Parent = Scroll
	ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ListLayout.Padding = UDim.new(0.00999999978, 0)

	Name.Name = "Name"
	Name.Parent = HubName
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0, 7, 0, 2)
	Name.Size = UDim2.new(0, 79, 0, 30)
	Name.Font = Enum.Font.RobotoMono
	Name.Text = tname_lib
	Name.TextColor3 = Color3.fromRGB(255, 255, 255)
	Name.TextSize = 17.000
	Name.TextXAlignment = Enum.TextXAlignment.Left

	KeepTextSize.Name = "KeepTextSize"
	KeepTextSize.Parent = Name
	KeepTextSize.AspectRatio = 2.654

	Close.Name = "Close"
	Close.Parent = HubName
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.845588267, 0, 0.234999999, 0)
	Close.Size = UDim2.new(0, 13, 0, 15)
	Close.Image = "rbxassetid://7072725342"

	Hide.Name = "Hide"
	Hide.Parent = HubName
	Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hide.BackgroundTransparency = 1.000
	Hide.BorderSizePixel = 0
	Hide.Position = UDim2.new(0.680127919, 0, 0.234999999, 0)
	Hide.Size = UDim2.new(0, 13, 0, 15)
	Hide.Image = "rbxassetid://7072719338"
	
	--// scrib
	Close.MouseButton1Click:Connect(function()
		Container.Parent.Visible = false
	end)

	Hide.MouseButton1Click:Connect(function()
		Container.Visible = false
	end)

	--// button stuff
	function lib:newbutton(tname_button, callback)

		--// make
		local ScriptButton = Instance.new("TextButton")
		local KeepTextSizeButton = Instance.new("UIAspectRatioConstraint")
	
		--// define
		ScriptButton.Name = "ScriptButton"
		ScriptButton.Parent = Scroll
		ScriptButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		ScriptButton.BackgroundTransparency = 0.750
		ScriptButton.BorderSizePixel = 0
		ScriptButton.Size = UDim2.new(0, 121, 0, 23)
		ScriptButton.Font = Enum.Font.RobotoMono
		ScriptButton.Text = tname_button
		ScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		ScriptButton.TextSize = 15.000

		KeepTextSizeButton.Name = "KeepTextSizeButton"
		KeepTextSizeButton.Parent = ScriptButton
		KeepTextSizeButton.AspectRatio = 5.075

		--// callback
		local callback = callback or function() end
		ScriptButton.MouseButton1Click:connect(function()
			pcall(callback)
		end)
	end
	
	return lib
end

return lib
