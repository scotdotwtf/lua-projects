print([[
        __                  __                                    
  _____|  |__ _____ _______|  | __  ________  _  _______  ______  
 /  ___/  |  \\__  \\_  __ \  |/ / /  ___/\ \/ \/ /\__  \ \____ \ 
 \___ \|   Y  \/ __ \|  | \/    <  \___ \  \     /  / __ \|  |_> >
/____  >___|  (____  /__|  |__|_ \/____  >  \/\_/  (____  /   __/ 
     \/     \/     \/           \/     \/               \/|__|    

// * by spec * //

]])

--// Make stuff
local sharkswap = Instance.new("ScreenGui")
local hold = Instance.new("Frame")
local imgframe = Instance.new("ImageLabel")
local holdingfrm = Instance.new("Frame")
local scrolling1 = Instance.new("ScrollingFrame")
local listlayout1 = Instance.new("UIListLayout")
local listlayout2 = Instance.new("UIListLayout")
local scrolling2 = Instance.new("ScrollingFrame")
local grid = Instance.new("UIGridLayout")
--// Control buttons
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")

--// Properties
sharkswap.Name = "sharkswap"
sharkswap.Parent = game:GetService("CoreGui")

hold.Name = "hold"
hold.Parent = sharkswap
hold.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
hold.BackgroundTransparency = 1.000
hold.BorderSizePixel = 0
hold.Position = UDim2.new(0.128124997, 0, 0.276851863, 0)
hold.Size = UDim2.new(0, 459, 0, 28)
hold.ZIndex = 0

imgframe.Name = "imgframe"
imgframe.Parent = hold
imgframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imgframe.BackgroundTransparency = 1.000
imgframe.BorderSizePixel = 0
imgframe.Size = UDim2.new(1, 0, 1.35714281, 314)
imgframe.ZIndex = -1
imgframe.Image = "rbxassetid://8846227957"
imgframe.ScaleType = Enum.ScaleType.Slice
imgframe.SliceCenter = Rect.new(38, 35, 138, 242)

holdingfrm.Name = "holdingfrm"
holdingfrm.Parent = imgframe
holdingfrm.BackgroundColor3 = Color3.fromRGB(28, 29, 44)
holdingfrm.BorderSizePixel = 0
holdingfrm.Position = UDim2.new(0, 7, 0, 29)
holdingfrm.Size = UDim2.new(1, -14, 1, -36)
holdingfrm.ZIndex = -2

scrolling1.Name = "scrolling1"
scrolling1.Parent = holdingfrm
scrolling1.Active = true
scrolling1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrolling1.BackgroundTransparency = 1.000
scrolling1.BorderSizePixel = 0
scrolling1.Size = UDim2.new(0, 100, 0, 100)
scrolling1.BottomImage = "rbxassetid://8714606928"
scrolling1.CanvasSize = UDim2.new(0, 0, 1, 0)
scrolling1.MidImage = "rbxassetid://6689849479"
scrolling1.TopImage = "rbxassetid://8714604436"
scrolling1.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 75)

listlayout1.Name = "listlayout"
listlayout1.Parent = scrolling1
listlayout1.SortOrder = Enum.SortOrder.LayoutOrder
listlayout1.Padding = UDim.new(0, 5)

listlayout2.Name = "listlayout"
listlayout2.Parent = scrolling2
listlayout2.SortOrder = Enum.SortOrder.LayoutOrder
listlayout2.Padding = UDim.new(0, 5)

scrolling2.Name = "scrolling2"
scrolling2.Parent = holdingfrm
scrolling2.Active = true
scrolling2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
scrolling2.BackgroundTransparency = 1.000
scrolling2.BorderSizePixel = 0
scrolling2.Size = UDim2.new(0, 100, 0, 100)
scrolling2.BottomImage = "rbxassetid://8714606928"
scrolling2.CanvasSize = UDim2.new(0, 0, 1, 0)
scrolling2.MidImage = "rbxassetid://6689849479"
scrolling2.TopImage = "rbxassetid://8714604436"
scrolling2.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 75)

grid.Name = "grid"
grid.Parent = holdingfrm
grid.HorizontalAlignment = Enum.HorizontalAlignment.Center
grid.SortOrder = Enum.SortOrder.LayoutOrder
grid.VerticalAlignment = Enum.VerticalAlignment.Center
grid.CellPadding = UDim2.new(0.0299999993, 0, 0, 5)
grid.CellSize = UDim2.new(0.469999999, 0, 0.959999979, 0)

--// Control Buttons
close.Name = "close"
close.Parent = hold
close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
close.BackgroundTransparency = 1
close.BorderSizePixel = 0
close.Position = UDim2.new(1, -53, 0, 0)
close.Size = UDim2.new(0, 46, 0, 18)
close.Font = Enum.Font.SourceSans
close.Text = ""
close.TextColor3 = Color3.fromRGB(0, 0, 0)
close.TextSize = 14.000

minimize.Name = "minimize"
minimize.Parent = hold
minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
minimize.BackgroundTransparency = 1
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(1, -109, 0, 0)
minimize.Size = UDim2.new(0, 28, 0, 18)
minimize.Font = Enum.Font.SourceSans
minimize.Text = ""
minimize.TextColor3 = Color3.fromRGB(0, 0, 0)
minimize.TextSize = 14.000

--// Scripts
local UIS = game:GetService("UserInputService")
local plr = game:GetService("Players").LocalPlayer
local chr = plr.Character

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

close.MouseButton1Click:Connect(function()
	sharkswap:Destroy()
end)

minimize.MouseButton1Click:Connect(function()
	if holdingfrm.Visible == true then
		holdingfrm.Visible = false
		hold.ClipsDescendants = true
	else
		holdingfrm.Visible = true
		hold.ClipsDescendants = false
	end
end)

local function newbtn(btext, tab, func)
	local button = Instance.new("TextButton")
	local buttonrounding = Instance.new("UICorner")
	
	if tab == 1 then
    	button.Parent = scrolling1
	    else
	    button.Parent = scrolling2
	end
	
	button.Name = "button"
	button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	button.BackgroundTransparency = 0.500
	button.BorderColor3 = Color3.fromRGB(27, 42, 53)
	button.BorderSizePixel = 0
	button.Size = UDim2.new(0, 192, 0, 27)
	button.Font = Enum.Font.RobotoMono
	button.Text = btext
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 14.000

	buttonrounding.CornerRadius = UDim.new(0, 4)
	buttonrounding.Name = "buttonrounding"
	buttonrounding.Parent = button
	
	--// func
	local func = func or function() end
	button.MouseButton1Click:Connect(function()
		pcall(func)
	end)
end

local function newtxt(ltext, tab)
	local textinsert = Instance.new("TextLabel")
	
	if tab == 1 then
    	textinsert.Parent = scrolling1
	    else
	    textinsert.Parent = scrolling2
	end

	textinsert.Name = "textinsert"
	textinsert.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	textinsert.BackgroundTransparency = 1.000
	textinsert.Position = UDim2.new(0, 0, 0.105485238, 0)
	textinsert.Size = UDim2.new(0, 192, 0, 27)
	textinsert.Font = Enum.Font.RobotoMono
	textinsert.Text = ltext
	textinsert.TextColor3 = Color3.fromRGB(255, 255, 255)
	textinsert.TextSize = 14.000
end

local function textinput(iptext, name, tab)
	local inputbox = Instance.new("TextBox")
	local inputrounding = Instance.new("UICorner")
	
	if tab == 1 then
    	inputbox.Parent = scrolling1
	    else
	    inputbox.Parent = scrolling2
	end
	
	inputbox.Name = name
	inputbox.BackgroundColor3 = Color3.fromRGB(59, 59, 81)
	inputbox.BackgroundTransparency = 0.500
	inputbox.Size = UDim2.new(0, 192, 0, 27)
	inputbox.ClearTextOnFocus = false
	inputbox.Font = Enum.Font.RobotoMono
	inputbox.Text = ""
	inputbox.PlaceholderText = iptext
	inputbox.TextColor3 = Color3.fromRGB(255, 255, 255)
	inputbox.TextSize = 14.000

	inputrounding.CornerRadius = UDim.new(0, 4)
	inputrounding.Name = "inputrounding"
	inputrounding.Parent = inputbox
end

newtxt("the j", 1)
textinput("dev_remote_style", "drs", 2)

--// Equipt all tools
newbtn("equipt all tools", 1, function()
	for i, v in pairs(plr.Backpack:GetDescendants()) do
    	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
    		v.Parent = plr.Character
    	end
    end
end)

--// Massplay
newbtn("mass play", 1, function()
    local restyle = scrolling2:FindFirstChild("drs").Text
    
    local function LOL(id)
    	for i, v in pairs(chr:GetDescendants()) do
    		if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
    			for i, v in pairs(v:GetDescendants()) do
    				if v:IsA("RemoteEvent") and restyle == "1" then
    					v:FireServer("PlaySong", id)
    				elseif v:IsA("RemoteEvent") and restyle == "2" then 
    					v:FireServer(id)
    				end
    			end
    		end
    	end
    end
    LOL(scrolling2:WaitForChild("audioid").Text)
end)

--// Hide boombox gui
newbtn("vis/invis play gui", 1, function()
    local choosesong = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("ChooseSongGui")
	if choosesong.Enabled == true then
	    choosesong.Enabled = false
	    else
	    choosesong.Enabled = true
	end
end)

newtxt("vis thing", 1)

--// Tool spin
newbtn("tool spin", 1, function()
    local hum = chr.Humanoid
    local mov = {};
    local mov2 = {};
    
    for i,v in next, chr:GetDescendants() do
        if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
            game:GetService("RunService").Heartbeat:connect(function()
            v.Velocity = Vector3.new(0, 300, 0)
            end)
        end
    end
    
    function ftp(str)
        local pt = {};
        if str ~= 'me' and str ~= 'random' then
            for i, v in pairs(game.Players:GetPlayers()) do
                if v.Name:lower():find(str:lower()) then
                    table.insert(pt, v);
                end
            end
        elseif str == 'me' then
            table.insert(pt, plr);
    	elseif str == 'random' then
    		table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
        end
        return pt;
    end
    
    for i, v in pairs(chr:GetDescendants()) do
    	if v:IsA("Tool") then
        	local b = v.Handle;
        	b.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0);
        	b.CanCollide = false;
        	b:BreakJoints();
        	for _, k in pairs(v:GetChildren()) do
        		if not k:IsA'SpecialMesh' and not k:IsA'Part' then
        		    
        		end
        	end
        	local still = Instance.new('BodyAngularVelocity', b);
        	still.MaxTorque = Vector3.new(math.huge, math.huge, math.huge);
        	still.AngularVelocity = Vector3.new(0, 0, 0);
        	local align = Instance.new('AlignPosition', b);
        	align.MaxForce = 1000000;
        	align.MaxVelocity = math.huge;
        	align.RigidityEnabled = false;
        	align.ApplyAtCenterOfMass = true;
        	align.Responsiveness = 200;
        	local a0 = Instance.new('Attachment', b);
        	local a1 = Instance.new('Attachment', chr.HumanoidRootPart);
        	align.Attachment0 = a0;
        	align.Attachment1 = a1;
        	table.insert(mov, a1);
        	table.insert(mov2, still);
    	end
    end
    
    local par = {};
    for _, v in pairs(mov) do
    	local parr = Instance.new('Part', workspace);
    	parr.Anchored = true;
    	parr.Size = Vector3.new(1, 1, 1);
    	parr.Transparency = 1;
    	parr.CanCollide = false;
    	table.insert(par, parr);
    end
    
    local rotx = 0;
    local rotz = math.pi / 2;
    local height = 0;
    local heighti = 1;
    local offset = 4;
    local speed = 5;
    local mode = 2;
    local angular = Vector3.new(0, 5, 0);
    local l = 1;
    game['Run Service'].RenderStepped:Connect(function()
    	rotx = rotx + speed / 100;
    	rotz = rotz + speed / 100;
    	l = (l >= 360 and 1 or l + speed);
    	
    	for i, v in pairs(par) do
    		v.CFrame = CFrame.new(chr.HumanoidRootPart.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + (360 / #par) * i + speed), 0) * CFrame.new(offset, 0, 0);
    	end
    	
    	if heighti == 1 then
    		height = height + speed / 100;
    	elseif heighti == 2 then
    		height = height - speed / 100;
    	end
    	if height > 2 then
    		heighti = 2;
    	end
    	if height < -1 then
    		heighti = 1;
    	end
    	
    	if mode == 1 then
    		for _, v in pairs(mov) do
    			v.Position = Vector3.new(math.sin(rotx) * offset, 0, math.sin(rotz) * offset);
    		end
    	elseif mode == 2 then
    	    		pcall(function()
    			local so = nil;
    			for k, b in pairs(chr:GetChildren()) do
    				if b:IsA'Tool' then
    					for h, j in pairs(b:GetDescendants()) do
    						if j:IsA'Sound' then
    							so = j;
    						end
    					end
    				end
    			end
    			if so ~= nil then
    				offset = so.PlaybackLoudness / 35;
    				speed = so.PlaybackLoudness / 250;
    				angular = Vector3.new(0, so.PlaybackLoudness / 75, 0);
    			end
    		end)
    		for i, v in pairs(mov) do
    			v.Position = Vector3.new(chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).X, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Y, chr.HumanoidRootPart.CFrame:ToObjectSpace(CFrame.new(par[i].Position)).Z);
    		end
    	end
    	for _, v in pairs(mov2) do
    		v.AngularVelocity = angular;
    	end
    end)
    game.Players.LocalPlayer.Chatted:Connect(function(c)
    	if c:split(' ')[1] == '.orbit' then
    		for _, v in pairs(mov) do
    			chr = ftp(c:split(' ')[2])[1].Character;
    			v.Parent = ftp(c:split(' ')[2])[1].Character.HumanoidRootPart;
    		end
    	end
    	if c:split(' ')[1] == '.speed' then
    		speed = tonumber(c:split(' ')[2]);
    	end
    	if c:split(' ')[1] == '.mode' then
    		mode = tonumber(c:split(' ')[2]);
    	end
    	if c:split(' ')[1] == '.offset' then
    		offset = tonumber(c:split(' ')[2]);
    	end
    	if c:split(' ')[1] == '.angular' then
    		angular = Vector3.new(tonumber(c:split(' ')[3]), tonumber(c:split(' ')[2]), tonumber(c:split(' ')[4]));
    	end
    end)
    
    wait()
    
    local hum = chr:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
    
    for i,v in next, hum:GetPlayingAnimationTracks() do
    	v:Stop()
    end
end)

newtxt("id", 2)
textinput("audio id", "audioid", 2)
newtxt("goofy/other", 2)

--// Funni fard
newbtn("comedic fard to die", 2, function()
    local restyle = scrolling2:FindFirstChild("drs").Text
    
	local fart = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Backpack.BoomBox.Parent = fart
    fart:BreakJoints()
    
    local explosion = Instance.new("Explosion", fart)
    explosion.BlastRadius = 1
    explosion.DestroyJointRadiusPercent = 0
    explosion.ExplosionType = Enum.ExplosionType.Craters
    explosion.Position = fart.HumanoidRootPart.Position
    explosion.Hit:Connect(function()
        return nil
    end)
        
    local function LOL(id)
        for i, v in pairs(chr:GetDescendants()) do
        	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
        		for i, v in pairs(v:GetDescendants()) do
        			if v:IsA("RemoteEvent") and restyle == "1" then
        				v:FireServer("PlaySong", id)
        			elseif v:IsA("RemoteEvent") and restyle == "2" then 
        				v:FireServer(id)
        			end
        		end
        	end
        end
    end
    
    LOL(6084423470)
    fart.BoomBox.Parent = workspace
end)

--// Rejoin
newbtn("rejoin", 2, function()
	game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end)

--// Harmonica
newbtn("fe harmonica", 2, function()
    local restyle = scrolling2:FindFirstChild("drs").Text
    
    local function LOL(id, idtime)
        for i, v in pairs(plr.Backpack:GetDescendants()) do
        	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
        		v.Parent = plr.Character
        	end
        end
            
        for i, v in pairs(chr:GetDescendants()) do
        	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
        		for i, v in pairs(v:GetDescendants()) do
        			if v:IsA("RemoteEvent") and restyle == "1" then
        				v:FireServer("PlaySong", id)
        			elseif v:IsA("RemoteEvent") and restyle == "2" then 
        				v:FireServer(id)
        			end
        		end
        	end
        end
        
        wait(idtime)
	
		for i, v in pairs(plr.Character:GetDescendants()) do
        	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
        		v.Parent = plr.Backpack
        	end
        end
        	
        wait(math.random(5, 20))
    end
    
    while true do
        
        --// Harm1
        LOL(33069371, 1.9)
        
        --// Harm2
        LOL(33069392, 1.3)
        
        --// Harm3
        LOL(33069412, 2.6)
        
        --// Harm4
        LOL(33069454, 1.9)
    
    end
end)

--// Demesh
newbtn("demesh", 2, function()
    for i, v in pairs(plr.Character:GetDescendants()) do
    	if v:IsA("Tool") and v.Name == "BoomBox" or v.Name == "SuperFlyGoldBoombox" then
    		v.Handle:FindFirstChild("Mesh"):Destroy()
    	end
    end
end)

scrolling2:WaitForChild("drs").Text = "2"

--// FAVORITE ID'S *by spec* //--
--vaporwave 1 431778605
--vaporwave 2 1650786609
--fard 6084423470
--scotland 6678671846
--indi 6169041888
--communism 7175496738 
--joe biden house 6674412714
--vamp 6150531919
--chicken 6293217371
--chill vaporwave 419284223
--rockerfeller street 2606678518
--zerotwo 3951847031
--content cop 515347026
--floor of laval 1426355953
--mario desert 6023948046
--challenger 807874496
--help urself 6680231528
-- /\ but louder and slower 6548556718
