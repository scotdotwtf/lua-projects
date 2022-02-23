print("ty so much colastee for basically doing all the work for project 2016 -spec")
wait(0.6)

local Gui = Instance.new("ScreenGui")
wait(0.05)
local ImageLabel = Instance.new("ImageLabel")
local ImageLabel_2 = Instance.new("ImageLabel")
local title = Instance.new("TextLabel")
local byc = Instance.new("TextLabel")
local server = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
if game.CoreGui:FindFirstChild("RobloxLoadingGui") ~= nil then
local LoadingGui = game.CoreGui:FindFirstChild("RobloxLoadingGui")
LoadingGui.Enabled = false
LoadingGui:Destroy()
end
Gui.Name = "Africking2016UIREPLICA"
Gui.Parent = game:WaitForChild("CoreGui")
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Enabled = true

ImageLabel.Parent = Gui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0, 0, -0.0965189859, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 90)
ImageLabel.Image = "rbxasset://textures/loading/darkLoadingTexture.png"
ImageLabel.ScaleType = Enum.ScaleType.Tile
ImageLabel.SliceScale = 0.000
ImageLabel.TileSize = UDim2.new(0.300000012, 0, 0.300000012, 0)

ImageLabel_2.Parent = ImageLabel
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.861751139, 0, 0.787970304, 0)
ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_2.Image = "rbxasset://textures/loading/loadingCircle.png"
ImageLabel_2.ScaleType = Enum.ScaleType.Tile
ImageLabel_2.SliceScale = 100.000

title.Name = "title"
title.Parent = ImageLabel
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.0129032256, 0, 0.787803769, 0)
title.Size = UDim2.new(0, 334, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Grabbing Game Name"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 20.000
title.TextWrapped = true
title.TextXAlignment = Enum.TextXAlignment.Left

byc.Name = "byc"
byc.Parent = ImageLabel
byc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
byc.BackgroundTransparency = 1.000
byc.Position = UDim2.new(0.0129032256, 0, 0.86691767, 0)
byc.Size = UDim2.new(0, 90, 0, 39)
byc.Font = Enum.Font.SourceSans
byc.Text = "Getting username..."
byc.TextColor3 = Color3.fromRGB(255, 255, 255)
byc.TextSize = 20.000
byc.TextWrapped = false
byc.TextXAlignment = Enum.TextXAlignment.Left

server.Name = "server"
server.Parent = ImageLabel
server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
server.BackgroundTransparency = 1.000
server.Position = UDim2.new(0.44389534, 0, 0.867244601, 0)
server.Size = UDim2.new(0, 150, 0, 39)
server.Font = Enum.Font.SourceSansBold
server.Text = "Loading server"
server.TextColor3 = Color3.fromRGB(255, 255, 255)
server.TextSize = 14.000
server.TextWrapped = true

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.876301765, 0, 0.834405065, 0)
TextLabel.Size = UDim2.new(0, 60, 0, 26)
TextLabel.Font = Enum.Font.SourceSansSemibold
TextLabel.Text = "Loading."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
spawn(function()
	game.RunService.Heartbeat:Connect(function()
		ImageLabel_2.Rotation = ImageLabel_2.Rotation + 6
	end)
end)
spawn(function()
title.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
byc.TextScaled = false
byc.Text = "By "..game.Players:GetNameFromUserIdAsync(game.CreatorId)

    spawn(function()

	while wait(1) do
		TextLabel.Text = "Loading."
		wait(1)
		TextLabel.Text = "Loading.."
		wait(1)
		TextLabel.Text = "Loading..."
		wait(1)
		TextLabel.Text = "Loading"
		wait(1)
	end
	end)
end)
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
wait(1)
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Gui:Destroy()
wait(0.5)
local badmouse = false
local runserv = game.RunService
local heartbeat = runserv.Heartbeat
local a, b = pcall(function()
local playerlist = Instance.new("ScreenGui")
local PlayerListContainer = Instance.new("Frame")
local ScrollList = Instance.new("ScrollingFrame")
local PopupClipFrame = Instance.new("Frame")
local You = Instance.new("Frame")
local BGFrame = Instance.new("TextButton")
local MembershipIcon = Instance.new("ImageLabel")
local PlayerName = Instance.new("TextLabel")
local scriptt = Instance.new('LocalScript', PlayerListContainer)
local NameHealthContainer = Instance.new("Frame")
local Username = Instance.new("TextLabel")
local HealthContainer = Instance.new("Frame")
local HealthFill = Instance.new("Frame")

NameHealthContainer.Name = "NameHealthContainer"
NameHealthContainer.Parent = game.CoreGui:WaitForChild("ThemeProvider").TopBarFrame.RightFrame
NameHealthContainer.BackgroundTransparency = 1.000
NameHealthContainer.Position = UDim2.new(1, -170, 0.027778089, 0)
NameHealthContainer.Size = UDim2.new(0, 170, 1, 0)
NameHealthContainer.Active = false

Username.Name = "Username"
Username.Parent = NameHealthContainer
Username.BackgroundTransparency = 1.000
Username.Position = UDim2.new(0, 7, 0, 0)
Username.Size = UDim2.new(1, -14, 0, 22)
Username.Font = Enum.Font.SourceSansBold
Username.Text = "Player1"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextSize = 14.000
Username.TextXAlignment = Enum.TextXAlignment.Left
Username.TextYAlignment = Enum.TextYAlignment.Bottom
Username.Active = false

HealthContainer.Name = "HealthContainer"
HealthContainer.Parent = NameHealthContainer
HealthContainer.BackgroundColor3 = Color3.fromRGB(228, 236, 246)
HealthContainer.BorderSizePixel = 0
HealthContainer.Position = UDim2.new(0, 7, 1, -9)
HealthContainer.Size = UDim2.new(1, -14, 0, 3)
HealthContainer.Active = false

HealthFill.Name = "HealthFill"
HealthFill.Parent = HealthContainer
HealthFill.BackgroundColor3 = Color3.fromRGB(27, 252, 107)
HealthFill.BorderSizePixel = 0
HealthFill.Size = UDim2.new(1, 0, 1, 0)
HealthFill.Active = false


local function JWFFKU_fake_script() 
	local script = Instance.new('LocalScript', Username)

	local player = game.Players.LocalPlayer
	while wait() do
		script.Parent.Text = player.Name
	end
end

coroutine.wrap(JWFFKU_fake_script)()
print([[
huge credits to spec#9001 and noob49#6475 (me)

and yes it is open sourced

]])
local function VWPK_fake_script()
	local script = Instance.new('LocalScript', NameHealthContainer)

	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health,false)
	local player = game.Players.LocalPlayer
	local char = player.Character
	local gui = script.Parent
	local frame = gui.HealthContainer
	local bar = frame.HealthFill
	heartbeat:Connect(function()
		bar.Size = UDim2.new(0,(game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health / game.Players.LocalPlayer.Character:WaitForChild("Humanoid").MaxHealth * 160),1,0)
		spawn(function() 
			if game.Players.LocalPlayer.Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth and game.Players.LocalPlayer.Character.Humanoid.Health > game.Players.LocalPlayer.Character.Humanoid.MaxHealth/2 then
				bar.BackgroundColor3 = Color3.new(1-(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)+0.5,1,0)
			else
				bar.BackgroundColor3 = Color3.fromRGB(27, 252, 107)
			end
			if game.Players.LocalPlayer.Character.Humanoid.Health == game.Players.LocalPlayer.Character.Humanoid.MaxHealth/2 then
				bar.BackgroundColor3 = Color3.new(1,1,0)
			end
			if game.Players.LocalPlayer.Character.Humanoid.Health < game.Players.LocalPlayer.Character.Humanoid.MaxHealth/2 then
				bar.BackgroundColor3 = Color3.new(1,(game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*2,0)
			end 
		end)
	end)
end
coroutine.wrap(VWPK_fake_script)()


playerlist.ResetOnSpawn = false

playerlist.Name = "playerlist"
playerlist.Parent = game:GetService("CoreGui")
playerlist.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

PlayerListContainer.Name = "PlayerListContainer"
PlayerListContainer.Parent = playerlist
PlayerListContainer.BackgroundTransparency = 1.000
PlayerListContainer.Position = UDim2.new(1, -170, 0, 0)
PlayerListContainer.Size = UDim2.new(0, 170, 0.5, 0)

ScrollList.Name = "ScrollList"
ScrollList.Size = UDim2.new(0, -370, 1, 0)
ScrollList.Parent = PlayerListContainer
ScrollList.Position = UDim2.new(1, 0, 0.01, 0)
ScrollList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollList.ClipsDescendants = true
ScrollList.BackgroundTransparency = 1
ScrollList.BorderSizePixel = 0
ScrollList.ScrollBarThickness = 0
ScrollList.CanvasSize = UDim2.new(0, 0, 2, 0)

local plr23 = 0
for _,v in pairs(game.Players:GetChildren()) do
    plr23 = #game.Players:GetChildren()
end
game.RunService.Heartbeat:Connect(function()
    if plr23 > 10 then
        ScrollList.ScrollingEnabled = true
        else
        ScrollList.ScrollingEnabled = false
    end
end)

game.RunService.Heartbeat:Connect(function()
    if plr23 > 25 then
        ScrollList.CanvasSize = UDim2.new(0, 0, 4, 0)
    end
end)
PopupClipFrame.Archivable = false
PopupClipFrame.Name = "PopupClipFrame"
PopupClipFrame.Parent = PlayerListContainer
PopupClipFrame.BackgroundTransparency = 1.000
PopupClipFrame.ClipsDescendants = true
PopupClipFrame.Position = UDim2.new(0, -152, 0, 0)
PopupClipFrame.Size = UDim2.new(0, 150, 1.5, 0)
PopupClipFrame.Visible = false

You.Name = "You"
You.Parent = scriptt
You.BackgroundTransparency = 1.000
You.Size = UDim2.new(1, 0, 0, 24)

BGFrame.Name = "BGFrame"
BGFrame.Parent = You
BGFrame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
BGFrame.BackgroundTransparency = 0.500
BGFrame.BorderSizePixel = 0
BGFrame.Size = UDim2.new(0, 170, 0, 24)
BGFrame.AutoButtonColor = false
BGFrame.Text = ""

MembershipIcon.Name = "MembershipIcon"
MembershipIcon.Parent = BGFrame
MembershipIcon.BackgroundTransparency = 1.000
MembershipIcon.BorderSizePixel = 0
MembershipIcon.Position = UDim2.new(0.00999999978, 1, 0.5, -8)
MembershipIcon.Size = UDim2.new(0, 16, 0, 16)

PlayerName.Name = "PlayerName"
PlayerName.Parent = BGFrame
PlayerName.BackgroundTransparency = 1.000
PlayerName.ClipsDescendants = true
PlayerName.Position = UDim2.new(0.00999999978, 19, 0, 0)
PlayerName.Size = UDim2.new(-0.00999999978, 151, 1, 0)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.Text = "Player1"
PlayerName.TextColor3 = Color3.fromRGB(255, 255, 243)
PlayerName.TextSize = 14.000
PlayerName.TextStrokeColor3 = Color3.fromRGB(34, 34, 34)
PlayerName.TextStrokeTransparency = 0.750
PlayerName.TextXAlignment = Enum.TextXAlignment.Left

-- Scripts:
local friend = ""
local friend2 = ""
local t = false
local tss = game:GetService("TweenService")
local m1 = 0
local m2 = 0
	        function add(exdude, dude, unfriend, friende)
	        local que = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local green = Instance.new("Frame")
local sfr = Instance.new("TextLabel")
local SendRequest = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local Cancel = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local text = Instance.new("TextLabel")
local player = Instance.new("ImageLabel")


que.Name = "que?"
que.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
que.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = que
main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
main.BackgroundTransparency = 0.300
main.BorderSizePixel = 0
main.Position = UDim2.new(0.347333312, 0, -0.6, 0)
main.Size = UDim2.new(0, 414, 0, 296)
function out()
    main:TweenPosition(UDim2.new(0.347333312, 0, -0.6, 0), "Out", "Sine", 0.5)
    wait(0.4)
    main:Destroy()
    que:Destroy()
end
function inn()
    main:TweenPosition(UDim2.new(0.347333312, 0, 0.268987328, 0), "Out", "Sine", 0.4)
end
green.Name = "green"
green.Parent = main
green.BackgroundColor3 = Color3.fromRGB(71, 173, 85)
green.BorderSizePixel = 0
green.Position = UDim2.new(-0.000492851541, 0, 0.215223983, 0)
green.Size = UDim2.new(0, 414, 0, 2)

sfr.Name = "sfr?"
sfr.Parent = main
sfr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sfr.BackgroundTransparency = 1.000
sfr.BorderColor3 = Color3.fromRGB(27, 42, 53)
sfr.BorderSizePixel = 0
sfr.Position = UDim2.new(0.258454114, 0, 0.0594909266, 0)
sfr.Size = UDim2.new(0, 200, 0, 30)
sfr.Font = Enum.Font.SourceSansBold
if unfriend == false then
sfr.Text = "Send Friend Request?"
else
sfr.Text = "Unfriend Player?"
end
sfr.TextColor3 = Color3.fromRGB(255, 255, 255)
sfr.TextScaled = true
sfr.TextSize = 14.000
sfr.TextWrapped = true

SendRequest.Name = "Send Request"
SendRequest.Parent = main
SendRequest.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
SendRequest.Position = UDim2.new(0.130434781, 0, 0.804054081, 0)
SendRequest.Size = UDim2.new(0, 145, 0, 36)
SendRequest.AutoButtonColor = false
SendRequest.Font = Enum.Font.SourceSansBold
if unfriend == false then
SendRequest.Text = "Send Request"
else
SendRequest.Text = "Remove"
end
SendRequest.TextColor3 = Color3.fromRGB(255, 255, 255)
SendRequest.TextSize = 25.000

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = SendRequest

Cancel.Name = "Cancel"
Cancel.Parent = main
Cancel.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
Cancel.Position = UDim2.new(0.519323707, 0, 0.804054081, 0)
Cancel.Size = UDim2.new(0, 145, 0, 36)
Cancel.AutoButtonColor = false
Cancel.Font = Enum.Font.SourceSans
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
Cancel.TextSize = 25.000

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Cancel

text.Name = "text"
text.Parent = main
text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
text.BackgroundTransparency = 1.000
text.BorderColor3 = Color3.fromRGB(27, 42, 53)
text.BorderSizePixel = 0
text.Position = UDim2.new(0.451690823, 0, 0.275707155, 0)
text.Size = UDim2.new(0, 200, 0, 59)
text.Font = Enum.Font.SourceSansBold
if unfriend == false then
text.Text = "Would you like to send "..dude.." a Friend Request?"
else
text.Text = "Would you like to remove "..dude.." from your Friend List?"
end
text.TextColor3 = Color3.fromRGB(255, 255, 255)
text.TextScaled = true
text.TextSize = 14.000
text.TextWrapped = true

player.Name = "player"
player.Parent = main
player.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
player.BackgroundTransparency = 1.000
player.BorderColor3 = Color3.fromRGB(27, 42, 53)
player.Position = UDim2.new(0.0628019273, 0, 0.273648649, 0)
player.Size = UDim2.new(0, 147, 0, 143)
player.Image = game.Players:GetUserThumbnailAsync(game.Players:FindFirstChild(dude).UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
                SendRequest.MouseEnter:Connect(function()
	SendRequest.BackgroundColor3 = Color3.fromRGB(83, 195, 255)
end)
SendRequest.MouseLeave:Connect(function()
	SendRequest.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
end)
Cancel.MouseEnter:Connect(function()
	Cancel.BackgroundColor3 = Color3.fromRGB(83, 195, 255)
end)
Cancel.MouseLeave:Connect(function()
	Cancel.BackgroundColor3 = Color3.fromRGB(78, 84, 96)
end)
Cancel.MouseButton1Down:Connect(function()
    out()
end)
inn()
if unfriend == false then
SendRequest.MouseButton1Down:Connect(function()
    spawn(function()
        if exdude ~= nil then
        exdude:FindFirstChild("BGFrame").MembershipIcon.Image = "rbxasset://textures/ui/icon_friendrequestsent_16.png"
        end
        game.Players.LocalPlayer:RequestFriendship(game.Players:WaitForChild(dude))
        print(game.Players:FindFirstChild(dude))
        repeat wait() until game.Players:FindFirstChild(dude):IsFriendsWith(game.Players.LocalPlayer.UserId)
        friende:FindFirstChild("BGFrame").PlayerName.Text = "Unfriend Player"
        exdude:FindFirstChild("BGFrame").MembershipIcon.Image = ""
	end)
    out()
end)
else
SendRequest.MouseButton1Down:Connect(function()
    if friende ~= nil then
    friende:FindFirstChild("BGFrame").PlayerName.Text = "Send a friend request"
    end
		        game.Players.LocalPlayer:RevokeFriendship(game.Players:WaitForChild(dude))
		        exdude:FindFirstChild("BGFrame").MembershipIcon.Image = ""
		        out()
end)
inn()
end
end
function plrr()
    ScrollList:ClearAllChildren()
    if #game.Teams:GetChildren() == 0 then
    for _,v in pairs(game.Players:GetChildren()) do
    local ex = scriptt.You:Clone()
    ex.Parent = ScrollList
    ex.Name = v.Name
    ex.Position = UDim2.new(0, -170, 0, (#ScrollList:GetChildren() - 1) * 26)
    if ex.Name ~= game.Players.LocalPlayer.Name then
    ex:FindFirstChild("BGFrame").MouseButton1Click:Connect(function()
		    if t == false then
		        t = true
		        		    if ScrollList:FindFirstChild("adpr") then
		        		        spawn(function()
		        		        		        		        		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position, "Out", "Sine", 0.3)
		        		        		        		        		    friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, 0, 1, 0), "Out", "Sine", 0.3)
            wait(0.08)
            ScrollList:FindFirstChild("adpr"):Destroy()
            ScrollList:FindFirstChild("reabu"):Destroy()
            end)
                                local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
                    for _,brtt in pairs(scriptt.Parent.ScrollList:GetChildren()) do
                    local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(brtt:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
	            end
		    end

		    
		    friend = ex:Clone()
		    local g2 = {BackgroundColor3 = Color3.fromRGB(0, 255, 255)}
            local tww2 = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.2), g2)
            tww2:Play()
		    friend.Parent = ScrollList
		    friend:FindFirstChild("BGFrame").MembershipIcon:Destroy()
		    friend.Name = "adpr"
		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, -171, 0, 0), "Out", "Sine", 0.1)
	        if game.Players:FindFirstChild(ex.Name):IsFriendsWith(game.Players.LocalPlayer.UserId) then
	          friend:FindFirstChild("BGFrame").PlayerName.Text = "Unfriend Player"
		      ex:FindFirstChild("BGFrame").MembershipIcon.Image = "rbxasset://textures/ui/icon_friends_16.png"
		      else
		      friend:FindFirstChild("BGFrame").PlayerName.Text = "Send a friend request"
		      ex:FindFirstChild("BGFrame").MembershipIcon.Image = ""
	        end
	        friend2 = friend:Clone()
	        friend2.Parent = ScrollList
	        friend2.Name = "reabu"
	        friend2:FindFirstChild("BGFrame").PlayerName.Text = "Report Abuse"

	        friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, -171, 1, 2), "Out", "Sine", 0.1)
	        
		    friend:FindFirstChild("BGFrame").MouseButton1Click:Connect(function()
		        if friend:FindFirstChild("BGFrame").PlayerName.Text == "Send a friend request" then
                add(ex, ex.Name, false, friend)
		        else
                add(ex, ex.Name, true, friend)
		        end
		    end)
		    else
		        t = false
		        		    if ScrollList:FindFirstChild("adpr") then
		        		        spawn(function()
		        		        		        		        		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position, "Out", "Sine", 0.3)
		        		        		        		        		    friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, 0, 1, 0), "Out", "Sine", 0.3)
            wait(0.08)
            ScrollList:FindFirstChild("adpr"):Destroy()
            ScrollList:FindFirstChild("reabu"):Destroy()

            end)
                                local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
                    
                    for _,brtt in pairs(scriptt.Parent.ScrollList:GetChildren()) do
                    local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(brtt:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
	            end
		    end
		    end
end)
    end
	ex.BGFrame.PlayerName.Text = v.Name
	game.RunService.Heartbeat:Connect(function()
	    if game.Players:FindFirstChild(ex.Name) ~= nil then
	        if game.Players:FindFirstChild(ex.Name).UserId ~= game.CreatorId then
	   if game.Players:WaitForChild(ex.Name):IsFriendsWith(game.Players.LocalPlayer.UserId) then
		  scriptt.Parent.ScrollList:WaitForChild(v.Name):WaitForChild("BGFrame"):FindFirstChild("MembershipIcon").Image = "rbxasset://textures/ui/icon_friends_16.png"
	   end
	   end
	        if game.Players:FindFirstChild(ex.Name).UserId == game.CreatorId then
		  scriptt.Parent.ScrollList:FindFirstChild(v.Name):FindFirstChild("BGFrame"):FindFirstChild("MembershipIcon").Image = "rbxasset://textures/ui/icon_placeowner.png"
	        end
        end
	end)

    end
	    else
	        for _,Team in next, game.Teams:GetChildren() do
    local exa = scriptt.You:Clone()
    exa.Parent = ScrollList
    exa.Name = "teamthingdontcoloridk"
    exa.BGFrame.BackgroundColor = Team.TeamColor
    exa.Position = UDim2.new(0, -170, 0, (#ScrollList:GetChildren() - 1) * 26)
    exa.BGFrame.PlayerName.Text = Team.Name

    for _,v in next, game.Players:GetChildren() do
        if v.Team == Team then
    local ex = scriptt.You:Clone()
    ex.Parent = ScrollList
    ex.Name = v.Name
    ex.Position = UDim2.new(0, -170, 0, (#ScrollList:GetChildren() - 1) * 26)
    if ex.Name ~= game.Players.LocalPlayer.Name then
    ex:FindFirstChild("BGFrame").MouseButton1Click:Connect(function()
		    if t == false then
		        t = true
		        		    if ScrollList:FindFirstChild("adpr") then
		        		        spawn(function()
		        		        		        		        		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position, "Out", "Sine", 0.3)
		        		        		        		        		    friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, 0, 1, 0), "Out", "Sine", 0.3)
            wait(0.08)
            ScrollList:FindFirstChild("adpr"):Destroy()
            ScrollList:FindFirstChild("reabu"):Destroy()
            end)
                                local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
                    for _,brtt in pairs(scriptt.Parent.ScrollList:GetChildren()) do
                    local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(brtt:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
	            end
		    end

		    
		    friend = ex:Clone()
		    local g2 = {BackgroundColor3 = Color3.fromRGB(0, 255, 255)}
            local tww2 = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.2), g2)
            tww2:Play()
		    friend.Parent = ScrollList
		    friend:FindFirstChild("BGFrame").MembershipIcon:Destroy()
		    friend.Name = "adpr"
		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, -171, 0, 0), "Out", "Sine", 0.1)
	        if game.Players:FindFirstChild(ex.Name):IsFriendsWith(game.Players.LocalPlayer.UserId) then
	          friend:FindFirstChild("BGFrame").PlayerName.Text = "Unfriend Player"
		      ex:FindFirstChild("BGFrame").MembershipIcon.Image = "rbxasset://textures/ui/icon_friends_16.png"
		      else
		      friend:FindFirstChild("BGFrame").PlayerName.Text = "Send a friend request"
		      ex:FindFirstChild("BGFrame").MembershipIcon.Image = ""
	        end
	        friend2 = friend:Clone()
	        friend2.Parent = ScrollList
	        friend2.Name = "reabu"
	        friend2:FindFirstChild("BGFrame").PlayerName.Text = "Report Abuse"

	        friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, -171, 1, 2), "Out", "Sine", 0.1)
	        
		    friend:FindFirstChild("BGFrame").MouseButton1Click:Connect(function()
		        if friend:FindFirstChild("BGFrame").PlayerName.Text == "Send a friend request" then
                add(ex, ex.Name, false, friend)
		        else
                add(ex, ex.Name, true, friend)
		        end
		    end)
		    else
		        t = false
		        		    if ScrollList:FindFirstChild("adpr") then
		        		        spawn(function()
		        		        		        		        		    friend:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position, "Out", "Sine", 0.3)
		        		        		        		        		    friend2:FindFirstChild("BGFrame"):TweenPosition(ex:FindFirstChild("BGFrame").Position + UDim2.new(0, 0, 1, 0), "Out", "Sine", 0.3)
            wait(0.08)
            ScrollList:FindFirstChild("adpr"):Destroy()
            ScrollList:FindFirstChild("reabu"):Destroy()

            end)
                                local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(ex:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
                    
                    for _,brtt in pairs(scriptt.Parent.ScrollList:GetChildren()) do
                    local g = {BackgroundColor3 = Color3.fromRGB(31, 31, 31)}
                    local tww = tss:Create(brtt:FindFirstChild("BGFrame"), TweenInfo.new(0.3), g)
                    tww:Play()
	            end
		    end
		    end
end)
    end
	ex.BGFrame.PlayerName.Text = v.Name
	game.RunService.Heartbeat:Connect(function()
	    if game.Players:FindFirstChild(ex.Name) ~= nil then
	        if game.Players:FindFirstChild(ex.Name).UserId ~= game.CreatorId then
	   if game.Players:WaitForChild(ex.Name):IsFriendsWith(game.Players.LocalPlayer.UserId) then
		  scriptt.Parent.ScrollList:WaitForChild(v.Name):WaitForChild("BGFrame"):FindFirstChild("MembershipIcon").Image = "rbxasset://textures/ui/icon_friends_16.png"
	   end
	   end
	        if game.Players:FindFirstChild(ex.Name).UserId == game.CreatorId then
		  scriptt.Parent.ScrollList:FindFirstChild(v.Name):FindFirstChild("BGFrame"):FindFirstChild("MembershipIcon").Image = "rbxasset://textures/ui/icon_placeowner.png"
	        end
        end
	end)

        end
    end
end

end
end
plrr()
game.Players.PlayerRemoving:Connect(function(p)
    wait(0.05)
    plr23 = 0
for _,v in pairs(game.Players:GetChildren()) do
    plr23 = #game.Players:GetChildren()
end
	ScrollList:ClearAllChildren()
    m1 = 0
    m2 = 0
    plrr()
end)
game.Players.PlayerAdded:Connect(function(p)
    plr23 = #game.Players:GetChildren()
	ScrollList:ClearAllChildren()
    m1 = 0
    m2 = 0
    plrr()
end)
spawn(function()
for _,v in pairs(game.Teams:GetChildren()) do
    v.PlayerAdded:Connect(function()
            plr23 = 0
for _,v in pairs(game.Players:GetChildren()) do
    plr23 = #game.Players:GetChildren()
end
	ScrollList:ClearAllChildren()

    m1 = 0
    m2 = 0
    plrr()
end)
    v.PlayerRemoved:Connect(function()
            plr23 = 0
for _,v in pairs(game.Players:GetChildren()) do
    plr23 = #game.Players:GetChildren()
end
	ScrollList:ClearAllChildren()
    m1 = 0
    m2 = 0
    plrr()
end)
end
end)
end)
print(b)

local tbar = game:GetService("CoreGui"):WaitForChild("ThemeProvider").TopBarFrame
local chatico = tbar.LeftFrame.ChatIcon.Background.Icon
local UIS = game:GetService("UserInputService")
tbar.RightFrame.HealthBar:Destroy()
game.RunService.Heartbeat:Connect(function()
if game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:IsFocused() then
game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = 0.1
else
game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency
end
end)
game.RunService.Heartbeat:Connect(function()
tbar.Transparency = 0.5
tbar.BorderSizePixel = 0
tbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

tbar.LeftFrame.ChatIcon.Background.StateOverlay.Image = ""
tbar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""

tbar.LeftFrame.MenuIcon.Background.Image = ""
tbar.LeftFrame.ChatIcon.Background.Image = ""

tbar.LeftFrame.Position = UDim2.new(0, 0, 0, 2)
tbar.LeftFrame.Size = UDim2.new(0, 0, 0, 36)

tbar.LeftFrame.MenuIcon.Position = UDim2.new(0, 0, 0, 0)
tbar.LeftFrame.MenuIcon.Size = UDim2.new(0, 50, 0, 36)
tbar.LeftFrame.MenuIcon.Background.Icon.Position = UDim2.new(0, 25, 0, 12)
tbar.LeftFrame.MenuIcon.Background.Icon.Size = UDim2.new(0, 32, 0, 25)
game.CoreGui:WaitForChild("ThemeProvider").LegacyCloseMenu.CloseMenuButton.Position = UDim2.new(0, -8, 0, 18)
game.CoreGui:WaitForChild("ThemeProvider").LegacyCloseMenu.CloseMenuButton.Size = UDim2.new(0, 32, 0, 25)

tbar.LeftFrame.ChatIcon.Position = UDim2.new(0, 0, 0, 0)
tbar.LeftFrame.ChatIcon.Size = UDim2.new(0, 50, 0, 36)
tbar.LeftFrame.ChatIcon.Background.Icon.Position = UDim2.new(0, 14, 0, 13)
tbar.LeftFrame.ChatIcon.Background.Icon.Size = UDim2.new(0, 28, 0, 27)



tbar.LeftFrame.MenuIcon.Background.Icon.Image = "rbxasset://textures/ui/Menu/Hamburger.png"

end)

if chatico.Image == "rbxasset://textures/ui/TopBar/chatOff.png" then
    chatico.Image = "rbxasset://textures/ui/Chat/Chat@2x.png"
elseif chatico.Image == "rbxasset://textures/ui/TopBar/chatOn.png" then
    chatico.Image = "rbxasset://textures/ui/Chat/ChatDown@2x.png"
end

local function changechatico()
    if chatico.Image == "rbxasset://textures/ui/TopBar/chatOff.png" then
        chatico.Image = "rbxasset://textures/ui/Chat/Chat@2x.png"
    elseif chatico.Image == "rbxasset://textures/ui/TopBar/chatOn.png" then
        chatico.Image = "rbxasset://textures/ui/Chat/ChatDown@2x.png"
    end		
end
game.RunService.Heartbeat:Connect(function()
changechatico()
end)

tbar.LeftFrame.MenuIcon.Background.MouseButton1Click:Connect(function()
end)

game:GetService("CoreGui"):WaitForChild("ThemeProvider").TopBarFrame.RightFrame.MoreMenu.Visible = false
game:GetService("CoreGui"):WaitForChild("ThemeProvider").TopBarFrame.RightFrame.Position = UDim2.new(1, -4, 0, 0)

local UIS = game:GetService("UserInputService")
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.Tab then
		if game:GetService("CoreGui").playerlist.PlayerListContainer.Visible == true then
		    game:GetService("CoreGui").playerlist.PlayerListContainer.Visible = false
        else
            game:GetService("CoreGui").playerlist.PlayerListContainer.Visible = true
        end
	end
end)

for _,v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Chat '/?' or '/help' for a list of chat commands." then
        v.Text = "Please chat '/?' for a list of commands"
    end
end
game.RunService.Heartbeat:Connect(function()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    tbar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""
    game.CoreGui:WaitForChild("ThemeProvider").LegacyCloseMenu.CloseMenuButton.Image = "rbxasset://textures/ui/Menu/HamburgerDown.png"
    game.CoreGui:WaitForChild("ThemeProvider").LegacyCloseMenu.CloseMenuButton.ImageRectOffset = Vector2.new(0, 0)
    game.CoreGui:WaitForChild("ThemeProvider").LegacyCloseMenu.CloseMenuButton.ImageRectSize = Vector2.new(0, 0)
    if tbar.RightFrame:FindFirstChild("MoreMenu") then
        tbar.RightFrame.MoreMenu:Destroy()
    end
    if tbar.LeftFrame.ChatIcon:FindFirstChild("BadgeContainer") then
        if tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge") then
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.Image = "rbxasset://textures/ui/Chat/MessageCounter.png"
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ImageRectOffset = Vector2.new(0, 0)
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ImageRectSize = Vector2.new(0, 0)
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner:ClearAllChildren()
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Position = UDim2.new(0, 15, 0, 2)
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ScaleType = Enum.ScaleType.Fit
        if tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge"):FindFirstChild("Background") then
        tbar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Background:Destroy()
        end
        end
    else
        return nil
    end
end)
if badmouse == true then
local efgbht = Instance.new("ScreenGui")
local mouseh = Instance.new("ImageLabel")
local uis = game:GetService("UserInputService")
local mh = game.Players.LocalPlayer:GetMouse()
efgbht.Name = "oldmousethingsocool"
efgbht.Parent = game.CoreGui
efgbht.ResetOnSpawn = false
efgbht.IgnoreGuiInset = true

mouseh.Name = "Mouse"
mouseh.Parent = efgbht
mouseh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mouseh.BackgroundTransparency = 1.000
mouseh.Position = UDim2.new(0, 0, 1, 0)
mouseh.Size = UDim2.new(0, 64, 0, 64)
mouseh.Visible = true
mouseh.ZIndex = 9e9
mouseh.Image = "rbxassetid://7028337278"
game.RunService.Heartbeat:Connect(function()
mouseh.Position = UDim2.new(0, mh.X - 32, 0, mh.Y + 1)
uis.MouseIconEnabled = false
uis.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
mh.Icon = "rbxassetid://000001"
end)

for _,v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Chat '/?' or '/help' for a list of chat commands." then
        v.Text = "Please chat '/?' for a list of commands"
    end
    if v:IsA("TextLabel") and v.Name == "BubbleText" then
        v.Font = Enum.Font.Legacy
        v.TextSize = 13
    end
    if v:IsA("GuiObject") then
        if v.ZIndex > 5 then
        v.ZIndex = 5
        end
        if v.BackgroundTransparency < 1 then
        v.MouseEnter:Connect(function()
            wait()
            mouseh.Image = "rbxassetid://7028337377"
        end)
        v.MouseLeave:Connect(function()
            wait()
            mouseh.Image = "rbxassetid://7028337278"
        end)
        end
    end
end
game.DescendantAdded:Connect(function(v)
    if v:IsA("GuiObject") then
        if v.ZIndex > 5 then
        v.ZIndex = 5
        end
        if v.BackgroundTransparency < 1 then
        v.MouseEnter:Connect(function()
            wait()
            mouseh.Image = "rbxassetid://7028337377"
        end)
        v.MouseLeave:Connect(function()
            wait()
            mouseh.Image = "rbxassetid://7028337278"
        end)
        end
    end
    if v.Name == "BubbleText" then
        v.Font = Enum.Font.Legacy
        v.TextSize = 13
    end
end)
end

if badmouse == false then
    local mouse = game.Players.LocalPlayer:GetMouse()
    mouse.Icon = 'http://www.roblox.com/asset/?id=8772256433' 
end

local backpackicon = tbar.LeftFrame.ChatIcon:Clone()
local a, b = pcall(function()
backpackicon.Parent = tbar
backpackicon.Position = UDim2.new(0, 105, 0, -2)
backpackicon.Name = "BackpackIcon"
backpackicon.Size = UDim2.new(0, 25, 0, 36)
backpackicon.Background.ImageTransparency = 1
backpackicon.Background.Icon.Size = UDim2.new(0, 23, 0, 27)
backpackicon.Background.Icon.Image = "rbxasset://textures/ui/Backpack/Backpack@2x.png"
end)
game.RunService.Heartbeat:Connect(function()
    if game.CoreGui.RobloxGui.Backpack.Inventory.Visible == true then
        backpackicon.Background.Icon.Image = "rbxasset://textures/ui/Backpack/Backpack_Down@2x.png"
        else
        backpackicon.Background.Icon.Image = "rbxasset://textures/ui/Backpack/Backpack@2x.png"
    end
end)
--[[
gave up on this crap bc just realized that even when you make the backpack properties visible it still thinks that it doesnt have inventory opened.
local bp = game.CoreGui.RobloxGui.Backpack
local count = 0
local count2 = 0
function repos(state)
    local count = 0
    local count2 = 0
    for _,v in pairs(bp.Hotbar:GetChildren()) do
        v.Position = UDim2.new(0, 0, 0, 5)
    end
    if state == true then
        bp.Inventory.Visible = true
        for _,v in pairs(bp.Hotbar:GetChildren()) do
            count = count + 1
            if count == 1 then
                v.Position = UDim2.new(0, 5, 0, 5)
            end
            if count ~= 1 then
                count2 = count2 + 65
                v.Position = v.Position + UDim2.new(0, count2, 0, 0)
                v.Visible = true
            end
        end
    end
end
local bptog = false
backpackicon.Background.MouseButton1Down:Connect(function()
    if bptog == false and game.CoreGui.RobloxGui.Backpack.Inventory.Visible == false then
        repos(true)
    elseif bptog == false and game.CoreGui.RobloxGui.Backpack.Inventory.Visible == false then
        repos(false)
    end
end)
]]
function oldcon()
local Instance_new = Instance.new
local UDim2_new = UDim2.new
local Color3_new = Color3.new
local math_max = math.max
local tick = tick
local pairs = pairs
local os_time = os.time
local DEBUG = false

if syn then require = getrenv().require end

local AnalyticsCategory_Game = "Game"
local AnalyticsAction_InitialOpenTab = "DeveloperConsole_InitialOpenTab"
local AnalyticsAction_ClickToOpenOpenTab = "DeveloperConsole_ClickToOpenOpenTab"

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")

local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService("TextService")
local GuiService = game:GetService("GuiService")
local VRService = game:GetService("VRService")
local isTenFootInterface = GuiService:IsTenFootInterface()

local ClientMemoryAnalyzerClass = require(CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("Stats"):WaitForChild("ClientMemoryAnalyzer"))
local ServerMemoryAnalyzerClass = require(CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("Stats"):WaitForChild("ServerMemoryAnalyzer"))
local StatsUtils = require(CoreGui:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("Stats"):WaitForChild("StatsUtils"))

local Style; do
	local c3 = Color3.fromRGB;
	local frameColor = Color3.new(0.1, 0.1, 0.1)
	local textColor = Color3.new(1, 1, 1)
	local optionsFrameColor = Color3.new(1, 1, 1)
	
	pcall(function() -- Fun window colors for cool people
		local Players = game:GetService("Players")
		if not Players or not Players.LocalPlayer then
			return
		end
		local FunColors = {
			[56449]   = {c3(255, 63,  127)}; -- ReeseMcBlox
			[6949935] = {c3(255, 63,  127)}; -- NobleDragon
		}
		local funColor = FunColors[Players.LocalPlayer.UserId]
		if funColor then
			frameColor = funColor[1] or frameColor
			textColor = funColor[2] or textColor
		end
	end)
	
	Style = {
		ZINDEX = 6;
		Font = Enum.Font.SourceSans;
		FontBold = Enum.Font.SourceSansBold;
		
		HandleHeight = 24; -- How tall the top window handle is, as well as the width of the scroll bar
		TabHeight = 28;
		GearSize = 24;
		BorderSize = 2;
		CommandLineHeight = 22;
		
		OptionAreaHeight = 56;
		
		FrameColor = frameColor; -- Applies to pretty much everything, including buttons
		FrameTransparency = 0.5;
		OptionsFrameColor = optionsFrameColor;
		
		TextColor = textColor;
		
		MessageColors = {
			[0] = Color3.new(1, 1, 1); -- Enum.MessageType.MessageOutput
			[1] = Color3.new(0.4, 0.5, 1); -- Enum.MessageType.MessageInfo
			[2] = Color3.new(1, 0.6, 0.4); -- Enum.MessageType.MessageWarning
			[3] = Color3.new(1, 0, 0); -- Enum.MessageType.MessageError
		};
		
		ScrollbarFrameColor = frameColor;
		ScrollbarBarColor = frameColor;
		
		ScriptButtonHeight = 32;
		ScriptButtonColor = Color3.new(0, 1/3, 2/3);
		ScriptButtonTransparency = 0.5;
		
		CheckboxSize = 24;
		
		ChartTitleHeight = 20;
		ChartGraphHeight = 64;
		ChartDataHeight = 24;
		ChartHeight = 0; -- This gets added up at end and set at end of block
		ChartWidth = 620;
		
		-- (-1) means right to left
		-- (1) means left to right
		ChartGraphDirection = 1; -- the direction the bars move
		
		
		GetButtonDownColor = function(normalColor)
			local r, g, b = normalColor.r, normalColor.g, normalColor.b
			return Color3.new(1 - 0.75 * (1 - r), 1 - 0.75 * (1 - g), 1 - 0.75 * (1 - b))
		end;
		GetButtonHoverColor = function(normalColor)
			local r, g, b = normalColor.r, normalColor.g, normalColor.b
			return Color3.new(1 - 0.875 * (1 - r), 1 - 0.875 * (1 - g), 1 - 0.875 * (1 - b))
		end;

	}
	
	Style.ChartHeight = Style.ChartTitleHeight + Style.ChartGraphHeight + Style.ChartDataHeight + Style.BorderSize
end

local Primitives = {}; do
	local function new(className, parent, name)
		local n = Instance.new(className, parent)
		n.ZIndex = 0
		if name then
			n.Name = name
		end
		return n
	end
	local unitSize = UDim2.new(1, 0, 1, 0)
	
	local function setupFrame(n)
		n.BackgroundColor3 = Style.FrameColor
		n.BackgroundTransparency = Style.FrameTransparency
		n.BorderSizePixel = 0
	end
	local function setupText(n, text)
		n.Font = Style.Font
		n.TextColor3 = Style.TextColor
		n.Text = text or n.Text
	end
	
	function Primitives.Frame(parent, name)
		local n = new('Frame', parent, name)
		setupFrame(n)
		return n
	end
	function Primitives.TextLabel(parent, name, text)
		local n = new('TextLabel', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.TextBox(parent, name, text)
		local n = new('TextBox', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.TextButton(parent, name, text)
		local n = new('TextButton', parent, name)
		setupFrame(n)
		setupText(n, text)
		return n
	end
	function Primitives.Button(parent, name)
		local n = new('TextButton', parent, name)
		setupFrame(n)
		n.Text = ""
		return n
	end
	function Primitives.ImageButton(parent, name, image)
		local n = new('ImageButton', parent, name)
		setupFrame(n)
		n.Image = image or ""
		n.Size = unitSize
		return n
	end
	
	-- An invisible frame of size (1, 0, 1, 0)
	function Primitives.FolderFrame(parent, name) -- Should this be called InvisibleFrame? lol
		local n = new('Frame', parent, name)
		n.BackgroundTransparency = 1
		n.Size = unitSize
		return n
	end
	function Primitives.InvisibleTextLabel(parent, name, text)
		local n = new('TextLabel', parent, name)
		setupText(n, text)
		n.BackgroundTransparency = 1
		return n
	end
	function Primitives.InvisibleButton(parent, name, text)
		local n = new('TextButton', parent, name)
		n.BackgroundTransparency = 1
		n.Text = ""
		return n
	end
	function Primitives.InvisibleImageLabel(parent, name, image)
		local n = new('ImageLabel', parent, name)
		n.BackgroundTransparency = 1
		n.Image = image or ""
		n.Size = unitSize
		return n
	end
end

--[[ Flags ]]--
local function checkFFlag(flagName) 
	local flagSuccess, flagValue = pcall(function() 
			return settings():GetFFlag(flagName)
		end)
	return (flagSuccess and flagValue)
end


local EYECANDY_ENABLED = true

local AUTO_TAB_WIDTH = -1
local TAB_TEXT_SIZE = 14
local TAB_TEXT_PADDING = 8


local function CreateSignal()
	local this = {}

	local mBindableEvent = Instance.new('BindableEvent')
	local mAllCns = {} --all connection objects returned by mBindableEvent::connect

	--main functions
	function this:connect(func)
		if self ~= this then error("connect must be called with `:`, not `.`", 2) end
		if type(func) ~= 'function' then
			error("Argument #1 of connect must be a function, got a "..type(func), 2)
		end
		local cn = mBindableEvent.Event:Connect(func)
		mAllCns[cn] = true
		local pubCn = {}
		function pubCn:disconnect()
			cn:Disconnect()
			mAllCns[cn] = nil
		end
		pubCn.Disconnect = pubCn.disconnect
		
		return pubCn
	end
	
	function this:disconnect()
		if self ~= this then error("disconnect must be called with `:`, not `.`", 2) end
		for cn, _ in pairs(mAllCns) do
			cn:Disconnect()
			mAllCns[cn] = nil
		end
	end
	
	function this:wait()
		if self ~= this then error("wait must be called with `:`, not `.`", 2) end
		return mBindableEvent.Event:Wait()
	end
	
	function this:fire(...)
		if self ~= this then error("fire must be called with `:`, not `.`", 2) end
		mBindableEvent:Fire(...)
	end
	
	this.Connect = this.connect
	this.Disconnect = this.disconnect
	this.Wait = this.wait
	this.Fire = this.fire

	return this
end

-- This is a Signal that only calls once, then forgets about the function. It also accepts event listeners as functions
local CreateDisconnectSignal; do
	local Methods = {}
	local Metatable = {__index = Methods}
	function Methods.fire(this, ...)
		return this.Signal:fire(...)
	end
	function Methods.wait(this, ...)
		return this.Signal:wait(...)
	end
	function Methods.connect(this, func)
		local t = type(func)
		if t == 'table' or t == 'userdata' then
			-- Got event listener
			local listener = func
			function func()
				listener:disconnect()
			end
		elseif t ~= 'function' then
			error('Invalid disconnect method type: ' .. t, 2)
		end

		local listener;
		listener = this.Signal:connect(function(...)
			if listener then
				listener:disconnect()
				listener = nil
				func(...)
			end
		end)
		return listener
	end
	function CreateDisconnectSignal()
		return setmetatable({
			Signal = CreateSignal();
		}, Metatable)
	end
end

-- Services
local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')
local TouchEnabled = UserInputService.TouchEnabled

local DeveloperConsole = {}

local Methods = {}
local Metatable = {__index = Methods}

-------------------------
-- Listener management --
-------------------------
function Methods.ConnectSetVisible(devConsole, func)
	-- This is used mainly for pausing rendering and stuff when the console isn't visible
	func(devConsole.Visible)
	return devConsole.VisibleChanged:connect(function(visible)
		func(visible)
	end)
end
function Methods.ConnectObjectSetVisible(devConsole, object, func)
	-- Same as above, but used for calling methods like object:SetVisible()
	func(object, devConsole.Visible)
	return devConsole.VisibleChanged:connect(function(visible)
		func(object, visible)
	end)
end

-----------------------------
-- Frame/Window Dimensions --
-----------------------------

local function connectPropertyChanged(object, property, callback)
	return object.Changed:connect(function(propertyChanged)
		if propertyChanged == property then
			callback(object[property])
		end
	end)
end

function Methods.ResetFrameDimensions(devConsole)
	devConsole.Frame.Size = UDim2_new(0.5, 20, 0.5, 20);
	
	local abSize = devConsole.Frame.AbsoluteSize
	devConsole:SetFrameSize(abSize.x, abSize.y)
	local newSize = devConsole.Frame.Size
	devConsole.Frame.Position = UDim2_new(0.5, -newSize.X.Offset/2, 0.5, -newSize.Y.Offset/2)
end
function Methods.BoundFrameSize(devConsole, x, y)
	-- Minimum frame size
	return math_max(x, 400), math_max(y, 200)
end
function Methods.SetFrameSize(devConsole, x, y)
	x, y = devConsole:BoundFrameSize(x, y)
	devConsole.Frame.Size = UDim2_new(0, x, 0, y)
end
function Methods.BoundFramePosition(devConsole, x, y)
	-- Make sure the frame doesn't go somewhere where the bar can't be clicked
	return x, math_max(y, 0)
end
function Methods.SetFramePosition(devConsole, x, y)
	x, y = devConsole:BoundFramePosition(x, y)
	devConsole.Frame.Position = UDim2_new(0, x, 0, y)
end

-- Open/Close the console
function Methods.SetVisible(devConsole, visible, animate)
	if devConsole.Visible == visible then
		return
	end
	devConsole.Visible = visible
	devConsole.VisibleChanged:fire(visible)
	if devConsole.Frame then
		devConsole.Frame.Visible = visible
	end	
	if visible then -- Open the console
		devConsole:ResetFrameDimensions()
  
		local tab = devConsole:GetCurrentOpenTab()
		if (tab ~= nil) then 
			tab:RecordInitialOpen()
		end
	end
  	if VRService.VREnabled then
  		if visible then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		end
	end
end

-----------------
-- Constructor --
-----------------
function DeveloperConsole.new(screenGui, permissions, messagesAndStats)

	local visibleChanged = CreateSignal()
	
	local devConsole = {
		ScreenGui = screenGui;
		Permissions = permissions;
		MessagesAndStats = messagesAndStats;
		Initialized = false;
		Visible = false;
		Tabs = {};
		CurrentOpenedTab = nil;	-- save last tab opened to set SelectedCoreObject for TenFootInterfaces
		VisibleChanged = visibleChanged; -- Created by :Initialize(); It's used to stop and disconnect things when the window is hidden
	}
	
	setmetatable(devConsole, Metatable)

	devConsole:EnableGUIMouse()
	
	-- It's a button so it catches mouse events
	local frame = Primitives.Button(screenGui, 'DeveloperConsole')
	frame.AutoButtonColor = false
	--frame.ClipsDescendants = true
	frame.Visible = devConsole.Visible
	frame.Selectable = not isTenFootInterface

	local function onVREnabled()
		frame.Modal = VRService.VREnabled
	end
	onVREnabled()
	VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabled)

	devConsole.Frame = frame
	devConsole:ResetFrameDimensions()
	
	-- The bar at the top that you can drag around
	local handle = Primitives.Button(frame, 'Handle')
	handle.Size = UDim2_new(1, -(Style.HandleHeight + Style.BorderSize), 0, Style.HandleHeight)
	handle.Selectable = not isTenFootInterface
	handle.Modal = true -- Unlocks mouse
	handle.AutoButtonColor = false
	
	
	do -- Title
		local title = Primitives.InvisibleTextLabel(handle, 'Title', "Developer Console")
		title.Size = UDim2_new(1, -5, 1, 0)
		title.Position = UDim2_new(0, 5, 0, 0)	
		title.FontSize = Enum.FontSize.Size18
		title.TextXAlignment = Enum.TextXAlignment.Left
	end
	
	local function setCornerButtonImageSize(buttonImage, buttonImageSize)
		buttonImage.Size = UDim2_new(buttonImageSize, 0, buttonImageSize, 0)
		buttonImage.Position = UDim2_new((1 - buttonImageSize) / 2, 0, (1 - buttonImageSize) / 2, 0)		
	end
  
	-- This is used for creating the square exit button and the square window resize button
	local function createCornerButton(name, x, y, image, buttonImageSize)
		-- Corners (x, y):
		-- (0, 0) (1, 0)
		-- (0, 1) (1, 1)
		
		local button = Primitives.Button(frame, name)
		button.Size = UDim2_new(0, Style.HandleHeight, 0, Style.HandleHeight)
		button.Position = UDim2_new(x, -x * Style.HandleHeight, y, -y * Style.HandleHeight)
		
		local buttonImage = Primitives.InvisibleImageLabel(button, 'Image', image)
		setCornerButtonImageSize(buttonImage, buttonImageSize)
		
		return button, buttonImage
	end
	
	do -- Create top right exit button
		local exitButton, exitButtonImage = createCornerButton('Exit', 1, 0, 'https://www.roblox.com/asset/?id=261878266', 2/3)
		exitButton.AutoButtonColor = false
		exitButton.Visible = not isTenFootInterface
		exitButton.Selectable = not isTenFootInterface
		
		local buttonEffectFunction = devConsole:CreateButtonEffectFunction(exitButton)
		
		devConsole:ConnectButtonHover(exitButton, function(clicking, hovering)
			if hovering and not clicking then
				setCornerButtonImageSize(exitButtonImage, 3/4)
			else
				setCornerButtonImageSize(exitButtonImage, 2/3)
			end
			buttonEffectFunction(clicking, hovering)
		end)
		
		exitButton.MouseButton1Click:connect(function()
			devConsole:SetVisible(false, true)
		end)
	end
	
	do -- Repositioning and Resizing
		
		do -- Create bottom right window resize button and activate resize dragging
			local resizeButton, resizeButtonImage = createCornerButton('Resize', 1, 1, 'https://www.roblox.com/asset/?id=261880743', 1)
			resizeButtonImage.Position = UDim2_new(0, 0, 0, 0)
			resizeButtonImage.Size = UDim2_new(1, 0, 1, 0)
			resizeButton.Selectable = not isTenFootInterface

			local dragging = false
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(resizeButton)
			
			devConsole:ConnectButtonDragging(resizeButton, function()
				local x0, y0 = frame.AbsoluteSize.X, frame.AbsoluteSize.Y
				return function(dx, dy)
					devConsole:SetFrameSize(x0 + dx, y0 + dy)
				end
			end, function(clicking, hovering)
				dragging = clicking
				buttonEffectFunction(clicking, hovering)
			end)
			
		end
		
		do -- Activate top handle dragging
			local frame = devConsole.Frame
			local handle = frame.Handle
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(handle)
			
			devConsole:ConnectButtonDragging(handle, function()
				local x, y = frame.AbsolutePosition.X, frame.AbsolutePosition.Y
				return function(dx, dy)
					devConsole:SetFramePosition(x + dx, y + dy)
				end
				--deltaCallback_Resize(-dx, -dy) -- Used if they are grabbing both at the same time
			end, buttonEffectFunction)
		end
	end
	
	-- interiorFrame contains tabContainer and window
	local interiorFrame = Primitives.FolderFrame(frame, 'Interior')
	interiorFrame.Position = UDim2_new(0, 0, 0, Style.HandleHeight)
	interiorFrame.Size = UDim2_new(1, -(Style.HandleHeight + Style.BorderSize * 2), 1, -(Style.HandleHeight + Style.BorderSize))
	
	local windowContainer = Primitives.FolderFrame(interiorFrame, 'WindowContainer')
	windowContainer.Size = UDim2_new(1, 0, 1, -(Style.TabHeight))
	windowContainer.Position = UDim2_new(0, Style.BorderSize, 0, Style.TabHeight)
	
	-- This is what applies ClipsDescendants to tab contents
	local window = Primitives.Frame(windowContainer, 'Window')
	window.Size = UDim2_new(1, 0, 1, 0) -- The tab open/close methods, and the consoles also set this
	window.Position = UDim2_new(0, 0, 0, 0)
	window.ClipsDescendants = true
	
	-- This is the frame that moves around with the scroll bar
	local body = Primitives.FolderFrame(window, 'Body')
	
	do -- Scrollbars
		local scrollbar = devConsole:CreateScrollbar()
		devConsole.WindowScrollbar = scrollbar
		local scrollbarFrame = scrollbar.Frame
		scrollbarFrame.Parent = frame
		scrollbarFrame.Size = UDim2_new(0, Style.HandleHeight, 1, -(Style.HandleHeight + Style.BorderSize) * 2)
		scrollbarFrame.Position = UDim2_new(1, -Style.HandleHeight, 0, Style.HandleHeight + Style.BorderSize)
		
		devConsole:ApplyScrollbarToFrame(scrollbar, window, body, frame)
	end
	
	local tabContainer = Primitives.FolderFrame(interiorFrame, 'Tabs') -- Shouldn't this be named 'tabFrame'?
	tabContainer.Size = UDim2_new(1, -(Style.GearSize + Style.BorderSize), 0, Style.TabHeight)
	tabContainer.Position = UDim2_new(0, 0, 0, 0)
	tabContainer.ClipsDescendants = true
	
	-- Options button
	local optionsButton = Primitives.InvisibleButton(frame, 'OptionsButton')
	
	local optionsClippingFrame = Primitives.FolderFrame(interiorFrame, 'OptionsClippingFrame')
	optionsClippingFrame.ClipsDescendants = true
	optionsClippingFrame.Position = UDim2_new(0, 0, 0, 0)
	optionsClippingFrame.Size = UDim2_new(1, 0, 0, 0)
	local optionsFrame = Primitives.FolderFrame(optionsClippingFrame, 'OptionsFrame')
	optionsFrame.Size = UDim2_new(1, 0, 0, Style.OptionAreaHeight)
	optionsFrame.Position = UDim2_new(0, 0, 0, Style.OptionAreaHeight)
	--optionsFrame.BackgroundColor3 = Style.OptionsFrameColor
	do -- Options animation
		
		local gearSize = Style.GearSize
		local tabHeight = Style.TabHeight
		local offset = (tabHeight - gearSize) / 2
		optionsButton.Size = UDim2_new(0, Style.GearSize, 0, Style.GearSize)
		optionsButton.Position = UDim2_new(1, -(Style.GearSize + offset + Style.HandleHeight), 0, Style.HandleHeight + offset)
		local gear = Primitives.InvisibleImageLabel(optionsButton, 'Image', 'https://www.roblox.com/asset/?id=261882463')
		--gear.ZIndex = ZINDEX + 1
		local animationToggle = devConsole:GenerateOptionButtonAnimationToggle(interiorFrame, optionsButton, gear, tabContainer, optionsClippingFrame, optionsFrame)
		local open = false
		optionsButton.MouseButton1Click:connect(function()
			open = not open
			animationToggle(open)
		end)
		
	end
	
	-- Console/Log and Stats options
	local setShownOptionTypes; -- Toggles what options to show: setOptionType({Log = true})
	
	local textFilter, scriptStatFilter;
	local textFilterChanged, scriptStatFilterChanged;
	
	local messageFilter;
	local messageFilterChanged, messageTextWrappedChanged;
	do -- Options contents/filters
		
		local function createCheckbox(color, callback)
			local this = {
				Value = true;
			}
			
			local frame = Primitives.FolderFrame(nil, 'Checkbox')
			this.Frame = frame
			frame.Size = UDim2_new(0, Style.CheckboxSize, 0, Style.CheckboxSize)
			frame.BackgroundColor3 = color
			
			local padding = 2
			
			local function f(xs, xp, yp) -- quick way to get an opaque border around a transparent center
				local ys = 1 - xs
				local f = Primitives.Frame(frame, 'Border')
				f.BackgroundColor3 = color
				f.BackgroundTransparency = 0
				f.Size = UDim2_new(xs, ys * padding, ys, xs * padding)
				f.Position = UDim2_new(xp, -xp * padding, yp, -yp * padding)
			end
			f(1, 0, 0)
			f(1, 0, 1)
			f(0, 0, 0)
			f(0, 1, 0)
			
			local button = Primitives.Button(frame, 'Button')
			button.Size = UDim2_new(1, -padding * 2, 1, -padding * 2)
			button.Position = UDim2_new(0, padding, 0, padding)
			
			local buttonEffectFunction = devConsole:CreateButtonEffectFunction(button)
			
			local check = Primitives.Frame(button, 'Check')
			
			local padding = 4
			check.Size = UDim2_new(1, -padding * 2, 1, -padding * 2)
			check.Position = UDim2_new(0, padding, 0, padding)
			check.BackgroundColor3 = color
			check.BackgroundTransparency = 0
			
			devConsole:ConnectButtonHover(button, buttonEffectFunction)
			
			function this.SetValue(this, value)
				if value == this.Value then
					return
				end
				this.Value = value
				check.Visible = value
				this.Value = value
				callback(value)
			end
			
			button.MouseButton1Click:connect(function()
				this:SetValue(not this.Value)
			end)
			
			return this
		end
		
		local string_find = string.find
		local containsString; -- the text typed into the search textBox, nil if equal to ""
		
		function textFilter(text)
			return not containsString or string_find(text:lower(), containsString)
		end
		
		local filterLookup = {} -- filterLookup[Enum.MessageType.x.Value] = true or false
		function messageFilter(message)
			return filterLookup[message.Type] and (not containsString or string_find(message.Message:lower(), containsString))
		end
		
		-- Events
		textFilterChanged = CreateSignal()
		scriptStatFilterChanged = CreateSignal()
		
		messageFilterChanged = CreateSignal()
		messageTextWrappedChanged = CreateSignal()
		
		local optionTypeContainers = {
			--[OptionType] = Frame
			--Log = Frame;
			--Scripts = Frame;
		}
		function setShownOptionTypes(shownOptionTypes)
			-- Example showOptionTypes:
			-- {Log = true}
			for optionType, container in pairs(optionTypeContainers) do
				container.Visible = shownOptionTypes[optionType] or false
			end
		end
		
		do -- Log options
			local container = Primitives.FolderFrame(optionsFrame, 'Log')
			container.Visible = false
			optionTypeContainers.Log = container

			local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Filters")
			label.FontSize = 'Size18'
			label.TextXAlignment = 'Left'
			label.Size = UDim2_new(0, 54, 0, Style.CheckboxSize)
			label.Position = UDim2_new(0, 4, 0, 2)
	
			do
				local x = label.Size.X.Offset
				local messageColors = Style.MessageColors
				for i = 0, #messageColors do -- 0, 3 initially
					local checkbox = createCheckbox(messageColors[i], function(value)
						filterLookup[i] = value
						messageFilterChanged:fire()
					end)
					filterLookup[i] = checkbox.Value
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x, 0, 4)
					x = x + Style.CheckboxSize + 4
				end
				
				do -- Word wrap
					x = x + 8
					
					local label = Primitives.InvisibleTextLabel(container, 'WrapLabel', "Word Wrap")
					label.FontSize = 'Size18'
					label.TextXAlignment = 'Left'
					label.Size = UDim2_new(0, 54 + Style.CheckboxSize, 0, Style.CheckboxSize)
					label.Position = UDim2_new(0, x + 4, 0, 2)
					
					local checkbox = createCheckbox(Color3.new(0.65, 0.65, 0.65), function(value)
						messageTextWrappedChanged:fire(value) -- an event isn't ideal here
					end)
					checkbox:SetValue(false)
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x + label.Size.X.Offset, 0, 4)
				end
			end
		end
		
		do -- Scripts options
			local container = Primitives.FolderFrame(optionsFrame, 'Stats')
			container.Visible = false
			optionTypeContainers.Scripts = container

			do
				local x = 0
				
				do -- Show inactive
					x = x + 4
					local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Show inactive")
					label.FontSize = 'Size18'
					label.TextXAlignment = 'Left'
					label.Size = UDim2_new(0, label.TextBounds.X + 6, 0, Style.CheckboxSize)
					label.Position = UDim2_new(0, x, 0, 2)
					x = x + label.Size.X.Offset
					
					local showInactive;
					local function getScriptCurrentlyActive(chartStat)
						local stats = chartStat.Stats
						if stats then
							local stat = stats[#stats]
							if stat then
								return stat[1] > 0.000001 or stat[2] > 0.000001
							end
						end
						return false
					end
					function scriptStatFilter(chartStat)
						return (showInactive or getScriptCurrentlyActive(chartStat))
							and (not containsString or string_find(chartStat.Name:lower(), containsString))
					end
						
					local checkbox = createCheckbox(Color3_new(1, 1, 1), function(value)
						showInactive = value
						scriptStatFilterChanged:fire()
					end)
					showInactive = checkbox.Value
					checkbox.Frame.Parent = container
					checkbox.Frame.Position = UDim2_new(0, x, 0, 4)
					x = x + Style.CheckboxSize + 4
				
				end

				x = x + 8
			end
		end
		
		do -- Search/filter/contains textbox
			
			local container = Primitives.FolderFrame(optionsFrame, 'Search')
			container.Visible = false
			optionTypeContainers.Search = container
      
			local label = Primitives.InvisibleTextLabel(container, 'FilterLabel', "Contains:")
			label.FontSize = 'Size18'
			label.TextXAlignment = 'Left'
			label.Size = UDim2_new(0, 60, 0, Style.CheckboxSize)
			label.Position = UDim2_new(0, 4, 0, 4 + Style.CheckboxSize + 4)
			
			local textBox = Primitives.TextBox(container, 'ContainsFilter')
			textBox.ClearTextOnFocus = true
			textBox.FontSize = 'Size18'
			textBox.TextXAlignment = 'Left'
			textBox.Size = UDim2_new(0, 150, 0, Style.CheckboxSize)
			textBox.Position = UDim2_new(0, label.Position.X.Offset + label.Size.X.Offset + 4, 0, 4 + Style.CheckboxSize + 4)
			textBox.Text = ""
		
			local runningColor = Color3.new(0, 0.5, 0)
			local normalColor = textBox.BackgroundColor3
			
			connectPropertyChanged(textBox, 'Text', function(text)
				text = text:lower()
				if text == "" then
					text = nil
				end
				if text == containsString then
					return
				end
				textBox.BackgroundColor3 = text and runningColor or normalColor
				containsString = text
				messageFilterChanged:fire()
				textFilterChanged:fire()
			end)
			
			connectPropertyChanged(textBox, 'TextBounds', function(textBounds)
				textBox.Size = UDim2_new(0, math.max(textBounds.X, 150), 0, Style.CheckboxSize)
			end)
		end
	end
	
	----------
	-- Tabs --
	----------
	do -- Console/Log tabs
		
		-- Wrapper for :AddTab
		local function createConsoleTab(name, 
        text, 
        outputMessageSync, 
        commandLineVisible, 
        commandInputtedCallback,
        openCallback)
			local tabBody = Primitives.FolderFrame(body, name)
			local output, commandLine;
			local disconnector = CreateDisconnectSignal()
			
			local tab = devConsole:AddTab(text, tabBody, function(open)
				if commandLine then
					commandLine.Frame.Visible = open
				end
				
				if open then
					setShownOptionTypes({
						Log = true;
            Search = true;
					})
					
					if not output then
						output = devConsole:CreateOutput(outputMessageSync:GetMessages(), messageFilter)
						output.Frame.Parent = tabBody
					end
					
					output:SetVisible(true)
					
					if commandLineVisible then
						if open and not commandLine then
							commandLine = devConsole:CreateCommandLine()
							commandLine.Frame.Parent = frame
							commandLine.Frame.Size = UDim2_new(1,
                -(Style.HandleHeight + Style.BorderSize * 2),
                0,
                Style.CommandLineHeight)
							commandLine.Frame.Position = UDim2_new(0,
                Style.BorderSize, 
                1, 
                -(Style.CommandLineHeight + Style.BorderSize))
							commandLine.CommandInputted:connect(commandInputtedCallback)
						end
					end

					window.Size = commandLineVisible
						and UDim2_new(1, 0, 1, -(Style.HandleHeight))
						or  UDim2_new(1, 0, 1, 0)

					
					local messages = outputMessageSync:GetMessages()
					
					local height = output:RefreshMessages()
					body.Size = UDim2_new(1, 0, 0, height)
					
					disconnector:connect(output.HeightChanged:connect(function(height)
						body.Size = UDim2_new(1, 0, 0, height)
					end))
					body.Size = UDim2_new(1, 0, 0, output.Height)
					
					disconnector:connect(outputMessageSync.MessageAdded:connect(function(message)
						output:RefreshMessages(#messages)
					end))
					
					disconnector:connect(messageFilterChanged:connect(function()
						output:RefreshMessages()
					end))
					disconnector:connect(messageTextWrappedChanged:connect(function(enabled)
						output:SetTextWrappedEnabled(enabled)
					end))
				else
					if output then
						output:SetVisible(false)
					end
					window.Size = UDim2_new(1, 0, 1, 0)
					disconnector:fire()
				end
				if openCallback then
					openCallback(open)
				end
			end)

			return tab
		end
		
		-- Client Log tab --
		if permissions.MayViewClientLog then
			local tab = createConsoleTab(
				'ClientLog', "Client Log",
				devConsole.MessagesAndStats.OutputMessageSyncLocal,
				true,
				function(text)
					if #text <= 1 then
						return
					end
					local f, err = loadstring(text)
					if err then
						warn(err)
						return
					end
					f();
				end
			)
			tab:SetVisible(true)      
			tab:SetOpen(true)
		end
	end


	return devConsole	
end

----------------------
-- Backup GUI Mouse --
----------------------
do -- This doesn't support multiple windows very well
	function Methods.EnableGUIMouse(devConsole)
		local label = Instance.new("ImageLabel")
		label.BackgroundTransparency = 1
		label.BorderSizePixel = 0
		label.Size = UDim2.new(0, 64, 0, 64)
		label.Image = "rbxasset://Textures/ArrowFarCursor.png"
		label.Name = "BackupMouse"
		label.ZIndex = Style.ZINDEX + 2
		
		local disconnector = CreateDisconnectSignal()
		
		local enabled = false
		
		local mouse = game:GetService("Players").LocalPlayer:GetMouse()
		
		local function Refresh()
			local enabledNew = devConsole.Visible and not UserInputService.MouseIconEnabled
			if enabledNew == enabled then
				return
			end
			enabled = enabledNew
			label.Visible = enabled
			label.Parent = enabled and devConsole.ScreenGui or nil
			disconnector:fire()
			if enabled then
				label.Position = UDim2.new(0, mouse.X - 32, 0, mouse.Y - 32)
				disconnector:connect(UserInputService.InputChanged:connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseMovement then
						--local p = input.Position
						--if p then
						label.Position = UDim2.new(0, mouse.X - 32, 0, mouse.Y - 32)
						--end
					end
				end))
			end
		end
		
		Refresh()
		local userInputServiceListener;
		devConsole.VisibleChanged:connect(function(visible)
			if userInputServiceListener then
				userInputServiceListener:disconnect()
				userInputServiceListener = nil
			end
			
			userInputServiceListener = UserInputService.Changed:connect(Refresh)
			
			Refresh()
		end)
		
	end
end

--------------------
-- Output console --
--------------------
do
	function Methods.CreateCommandLine(devConsole)
		local this = {
			CommandInputted = CreateSignal();
		}
		
		local frame = Primitives.FolderFrame(nil, 'CommandLine')
		this.Frame = frame
		frame.Size = UDim2_new(1, 0, 0, Style.CommandLineHeight)
		
		local textBoxFrame = Primitives.Frame(frame, 'TextBoxFrame')
		textBoxFrame.Size = UDim2_new(1, 0, 0, Style.CommandLineHeight)
		textBoxFrame.Position = UDim2_new(0, 0, 0, 0)
		textBoxFrame.ClipsDescendants = true
		
		local label = Primitives.InvisibleTextLabel(textBoxFrame, 'Label', ">")
		label.Position = UDim2_new(0, 4, 0, 0)
		label.Size = UDim2_new(0, 12, 1, -1)
		label.FontSize = 'Size14'
		
		local DEFAULT_COMMAND_BAR_TEXT = "Type command here"
		
		local textBox = Primitives.TextBox(textBoxFrame, 'TextBox')
		--textBox.TextWrapped = true -- This needs to auto-resize
		textBox.BackgroundTransparency = 1
		textBox.Text = DEFAULT_COMMAND_BAR_TEXT
		textBox.ClearTextOnFocus = false
		local padding = 2
		textBox.Size = UDim2_new(1, -(padding * 2) - 4 - 12, 0, 500)
		textBox.Position = UDim2_new(0, 4 + 12 + padding, 0, 0)
		textBox.TextXAlignment = 'Left'
		textBox.TextYAlignment = 'Top'
		textBox.FontSize = 'Size18'
		textBox.TextWrapped = true

		-- override SelectionImageObject to better fit
		if isTenFootInterface then
			local selectionImage = Instance.new('ImageLabel')
			selectionImage.Name = "SelectionImage"
			selectionImage.Size = UDim2.new(1, textBoxFrame.AbsoluteSize.x + 36, 0, Style.CommandLineHeight + 24)
			selectionImage.Position = UDim2.new(0, -18, 0, -12)
			selectionImage.Image = 'rbxasset://textures/ui/SelectionBox.png'
			selectionImage.ScaleType = Enum.ScaleType.Slice
			selectionImage.SliceCenter = Rect.new(21,21,41,41)
			selectionImage.BackgroundTransparency = 1

			textBox.SelectionImageObject = selectionImage
		end
		
		do
			local defaultSize = UDim2_new(1, 0, 0, Style.CommandLineHeight)
			local first = true
			
			textBox.Changed:connect(function(property)
				if property == 'TextBounds' or property == 'AbsoluteSize' then
					if first then -- There's a glitch that only occurs on the first change
						first = false
						return
					end
					local textBounds = textBox.TextBounds
					if textBounds.Y > Style.CommandLineHeight then
						textBoxFrame.Size = UDim2_new(1, 0, 0, textBounds.Y + 2)
					else
						textBoxFrame.Size = defaultSize
					end
				end
			end)
		end
		
		local disconnector = CreateDisconnectSignal()
		
		local backtrackPosition = 0
		local inputtedText = {}
		local isLastWeak = false
		local function addInputtedText(text, weak)
			-- weak means it gets overwritten by the next text that's inputted
			if isLastWeak then
				table.remove(inputtedText, 1)
			end
			if inputtedText[1] == text then
				isLastWeak = isLastWeak and weak
				return
			end
			isLastWeak = weak
			if not weak then
				for i = #inputtedText, 1, -1 do
					if inputtedText[i] == text then
						table.remove(inputtedText, i)
					end
				end
			end
			table.insert(inputtedText, 1, text)
		end
		local function backtrack(direction)
			backtrackPosition = backtrackPosition + direction
			if backtrackPosition < 1 then
				backtrackPosition = 1
			elseif backtrackPosition > #inputtedText then
				backtrackPosition = #inputtedText
			end
			if inputtedText[backtrackPosition] then
				-- Setting the text doesn't always work, especially after losing focus without pressing enter, then clicking back
				textBox.Text = inputtedText[backtrackPosition]
			end
		end
		
		local focusLostWithoutEnter = false
		
		textBox.Focused:connect(function()
			if textBox.Text == DEFAULT_COMMAND_BAR_TEXT then
				textBox.Text = ""
			end
			disconnector:fire()
			backtrackPosition = 0
			disconnector:connect(UserInputService.InputBegan:connect(function(input)
				if input.KeyCode == Enum.KeyCode.Up then
					if backtrackPosition == 0 and not focusLostWithoutEnter then
						-- They typed something, then pressed up. They might want what they typed back, so we store it
						--  after they input the next thing, we know they meant to discard this, which is why it's "weak" (second arg is true)
						addInputtedText(textBox.Text, true)
						backtrackPosition = 1
					end
					backtrack(1)
				elseif input.KeyCode == Enum.KeyCode.Down then
					backtrack(-1)
				end
			end))
		end)
		
		textBox.FocusLost:connect(function(enterPressed)
			disconnector:fire()
			if enterPressed then
				focusLostWithoutEnter = false
				
				local text = textBox.Text
				addInputtedText(text, false)
				this.CommandInputted:fire(text)
				textBox.Text = ""

				-- let's not spam the popup keyboard after text is entered
				if not isTenFootInterface then
					textBox:CaptureFocus()
				end
			else
				backtrackPosition = 0
				focusLostWithoutEnter = true
				addInputtedText(textBox.Text, true)
				if textBox.Text == "" then
					textBox.Text = DEFAULT_COMMAND_BAR_TEXT
				end
			end
		end)

		return this
	end
end

do
	local padding = 5
	local LabelSize = UDim2_new(1, -padding, 0, 2048)
	
	local TextColors = Style.MessageColors
	local TextColorUnknown = Color3_new(0.5, 0, 1)
	
	local function isHidden(message)
		return false
	end

	function Methods.CreateOutput(devConsole, messages, messageFilter)

		-- AKA 'Log'
		local heightChanged = CreateSignal()
		local output = {
			Visible = false;
			Height = 0;
			HeightChanged = heightChanged;
            MessagesDirty = false;
            MessagesDirtyPosition = 1;
		}
		
		local function setHeight(height)
			height = height + 4
			output.Height = height
			heightChanged:fire(height)
		end

		-- The label container
		local frame = Primitives.FolderFrame(nil, 'Output')
		frame.ClipsDescendants = true
		output.Frame = frame

		local textWrappedEnabled = false

		do
			local lastX = 0
			connectPropertyChanged(frame, 'AbsoluteSize', function(size)
				local currentX = size.X
				--currentY = currentY - currentY
				if currentX ~= lastX then
					lastX = currentX
					output:RefreshMessages()
				end
			end)
		end

		local labels = {}
		local labelPositions = {}

		local function RefreshTextWrapped()
			if not output.Visible then
				return
			end
			local y = 1
			for i = 1, #labels do
				local label = labels[i]
				label.TextWrapped = textWrappedEnabled
				local height = label.TextBounds.Y
				label.Size = LabelSize -- UDim2_new(1, 0, 0, height)
				label.Position = UDim2_new(0, padding, 0, y)
				y = y + height
				if height > 16 then
					y = y + 4
				end
			end
			setHeight(y)
		end
		local MAX_LINES = 2048

		local function RefreshMessagesForReal(messageStartPosition)
			if not output.Visible then
				return
			end

			local y = 1
			local labelPosition = 0 -- position of last used label

			-- Failed optimization:
			messageStartPosition = nil
			if messageStartPosition then
				local labelPositionLast;
				for i = messageStartPosition, math_max(1, #messages - MAX_LINES), -1 do
					if labelPositions[i] then
						labelPositionLast = labelPositions[i]
						break
					end
				end
				if labels[labelPositionLast] then
					labelPosition = labelPositionLast
					local label = labels[labelPositionLast]
					y = label.Position.Y.Offset + label.Size.Y.Offset
				else
					messageStartPosition = nil
				end
			end

			for i = messageStartPosition or math_max(1, #messages - MAX_LINES), #messages do
				local message = messages[i]
				if messageFilter(message) then
					labelPosition = labelPosition + 1
					labelPositions[i] = labelPosition
					local label = labels[labelPosition]
					if not label then
						label = Instance_new('TextLabel', frame)
						label.ZIndex = Style.ZINDEX
						label.BackgroundTransparency = 1
						--label.Font = Style.Font
						label.FontSize = 'Size10'
						label.TextXAlignment = 'Left'
						label.TextYAlignment = 'Top'
						labels[labelPosition] = label
					end
					label.TextWrapped = textWrappedEnabled
					label.Size = LabelSize
					label.TextColor3 = TextColors[message.Type] or TextColorUnknown
					label.Text = message.Time .. " -- " .. message.Message
					
					local height = label.TextBounds.Y
					label.Size = LabelSize -- UDim2_new(1, -padding, 0, height)
					label.Position = UDim2_new(0, padding, 0, y)

					y = y + height
					
					if height > 16 then
						y = y + 4
					end
				else
					labelPositions[i] = false
				end
			end

			-- Destroy extra labels
			for i = #labels, labelPosition + 1, -1 do
				labels[i]:Destroy()
				labels[i] = nil
			end
			
			setHeight(y)
		end
		
        function output.SetMessagesDirty(output, messageStartPosition)
            if output.MessagesDirty then
                return
            end
            output.MessagesDirty = true
            output.MessagesDirtyPosition = messageStartPosition
        end

		local refreshHandle;
		function output.RefreshMessages(output, messageStartPosition)
			if not output.Visible then
				return
			end
			if not refreshHandle then
				refreshHandle = true
				coroutine.wrap(function() -- Not ideal
					wait()
					refreshHandle = false
					RefreshMessagesForReal()
				end)()
			end
		end
		
		function output.SetTextWrappedEnabled(output, textWrappedEnabledNew)
			if textWrappedEnabledNew == textWrappedEnabled then
				return
			end
			textWrappedEnabled = textWrappedEnabledNew
			RefreshTextWrapped()
		end
		
		function output.SetVisible(output, visible)
			if visible == output.Visible then
				return
			end
			output.Visible = visible
			if visible then
				RefreshMessagesForReal()
			else
				for i = #labels, 1, -1 do
					labels[i]:Destroy()
					labels[i] = nil
				end
			end
		end

		return output
	end
end

----------
-- Tabs --
----------
function Methods.GetCurrentOpenTab(devConsole)
	local tabs = devConsole.Tabs
	if tabs == nil then 
		return nil
	end

	for i = 1, #tabs do
		local tab = tabs[i]
		if tab.Open then
			return tab
		end
	end
	return nil
end


function Methods.RefreshTabs(devConsole)
	-- Go through and reposition them
	local x = Style.BorderSize
	local tabs = devConsole.Tabs
	for i = 1, #tabs do
		local tab = tabs[i]
		if tab.ButtonFrame.Visible then
			x = x + 3
			tab.ButtonFrame.Position = UDim2_new(0, x, 0, 0)
			x = x + tab.ButtonFrame.AbsoluteSize.X + 3
		end
	end
end

function Methods.AddTab(devConsole, text, body, openCallback, visibleCallback)
	-- Body is a frame that contains the tab contents
	body.Visible = false
	
	local tab = {
		Open = false; -- If the tab is open
		Visible = false; -- If the tab is shown
		OpenCallback = openCallback;
		VisibleCallback = visibleCallback;
		Body = body;
	}

	local nominalSize = TextService:GetTextSize(text, TAB_TEXT_SIZE, Enum.Font.SourceSans, Vector2.new(1e3, 1e3))
	local width = nominalSize.x + (TAB_TEXT_PADDING * 2)
	
	local buttonFrame = Primitives.InvisibleButton(devConsole.Frame.Interior.Tabs, 'Tab_' .. text)
	tab.ButtonFrame = buttonFrame
	buttonFrame.Size = UDim2_new(0, width, 0, Style.TabHeight)
	buttonFrame.Visible = false
	
	local textLabel = Primitives.TextLabel(buttonFrame, 'Label', text)
	textLabel.TextSize = TAB_TEXT_SIZE
	--textLabel.TextYAlignment = Enum.TextYAlignment.Top
	
	devConsole:ConnectButtonHover(buttonFrame, devConsole:CreateButtonEffectFunction(textLabel))

	-- These are the dimensions when the tab is closed
	local size0 = UDim2_new(1, 0, 1, -7)
	local position0 = UDim2_new(0, 0, 0, 4)
	-- There are the dimensions when the tab is open
	local size1 = UDim2_new(1, 0, 1, -4)
	local position1 = UDim2_new(0, 0, 0, 4)
	-- It starts closed
	textLabel.Size = size0
	textLabel.Position = position0
	
	function tab.SetVisible(tab, visible)
		if visible == tab.Visible then
			return
		end
		tab.Visible = visible
		tab:SetOpen(false)
		if tab.VisibleCallback then
			tab.VisibleCallback(visible)
		end
		buttonFrame.Visible = visible
		devConsole:RefreshTabs()
		if not visible then
			tab.SetOpen(false)
		end
	end

	function tab.RecordInitialOpen(tab)
	end

	function tab.RecordClickToOpen(tab)
	end

	function tab.SetOpen(tab, open)
		if open == tab.Open then
			return
		end
		tab.Open = open

		if open then
			if tab.SavedScrollbarValue then
				devConsole.WindowScrollbar:SetValue(tab.SavedScrollbarValue)  -- This doesn't load correctly?
			end
			local tabs = devConsole.Tabs
			for i = 1, #tabs do
				if tabs[i] ~= tab then
					tabs[i]:SetOpen(false)
				end
			end
			if body then
				body.Visible = true
			end
			devConsole:RefreshTabs()
			-- Set dimensions for folder effect
			textLabel.Size = size1
			textLabel.Position = position1
			devConsole.CurrentOpenedTab = buttonFrame
		else
			tab.SavedScrollbarValue = devConsole.WindowScrollbar:GetValue() -- This doesn't save correctly

			if body then
				body.Visible = false
				-- todo: (not essential) these 2 lines should instead exist during open (above block) after going through tabs
				devConsole.Frame.Interior.WindowContainer.Window.Body.Size = UDim2_new(1, 0, 1, 0) 
				devConsole.Frame.Interior.WindowContainer.Window.Body.Position = UDim2_new(0, 0, 0, 0)
			end
			
			-- Set dimensions for folder effect
			textLabel.Size = size0
			textLabel.Position = position0
		end
		
		if tab.OpenCallback then
			tab.OpenCallback(open)
		end
		
	end
	
	buttonFrame.MouseButton1Click:connect(function()
			if tab.Visible then
				tab:RecordClickToOpen()
				tab:SetOpen(true)
			end
		end)
	
	table.insert(devConsole.Tabs, tab)
	
	return tab
	
end

----------------
-- Scroll bar --
----------------
function Methods.ApplyScrollbarToFrame(devConsole, 
    scrollbar, 
    window, 
    body, 
    frame)  
	local windowHeight, bodyHeight
	local height = scrollbar:GetHeight()
	local value = scrollbar:GetValue()
	local function getHeights()
		return window.AbsoluteSize.Y, body.AbsoluteSize.Y
	end
	local function refreshDimension()
		local windowHeightNew, bodyHeightNew = getHeights()

		if bodyHeight ~= bodyHeightNew or windowHeight ~= windowHeightNew then
			bodyHeight, windowHeight = bodyHeightNew, windowHeightNew
			height = windowHeight / bodyHeight
			scrollbar:SetHeight(height)
			
			local yOffset = (bodyHeight - windowHeight) * value
      -- Never let yOffset go negative.
      -- Without this line, things that are smaller than the containing scroll 
      -- window start at the bottom and grow up.
      -- It's a better UX to have things start at top and grow down.
      if (yOffset < 0) then 
        yOffset = 0
      end
      
			local x = body.Position.X
			local y = body.Position.Y
      
			body.Position = UDim2_new(x.Scale, x.Offset, y.Scale, -math.floor(yOffset))
		end

	end
	
	local function setValue(valueNew)
		value = valueNew
		refreshDimension()
		local yOffset = (bodyHeight - windowHeight) * value
		local x = body.Position.X
		local y = body.Position.Y
		body.Position = UDim2_new(x.Scale, x.Offset, y.Scale, -math.floor(yOffset))
	end
	scrollbar.ValueChanged:connect(setValue)
	setValue(scrollbar:GetValue())

	local scrollDistance = 120
	
	window.Active = true

	scrollbar.ButtonUp.MouseButton1Click:connect(function()
		scrollbar:Scroll(-scrollDistance, getHeights())
	end)
	scrollbar.ButtonDown.MouseButton1Click:connect(function()
		scrollbar:Scroll(scrollDistance, getHeights())
	end)

	connectPropertyChanged(window, 'AbsoluteSize', refreshDimension)
	connectPropertyChanged(body, 'AbsoluteSize', function()
		local windowHeight, bodyHeight = getHeights()
		local value = scrollbar:GetValue()
		if value ~= 1 and value ~= 0 then
			local value = -body.Position.Y.Offset / (bodyHeight - windowHeight)
			scrollbar:SetValue(value)
		end
		refreshDimension()
	end)

	window.MouseWheelForward:connect(function()
		scrollbar:Scroll(-scrollDistance, getHeights())
	end)
	window.MouseWheelBackward:connect(function()
		scrollbar:Scroll(scrollDistance, getHeights())
	end)
	window.TouchPan:connect(function(positions, delta, velocity, userInputState)
		scrollbar:Scroll(-delta.y, getHeights())
	end)
end

function Methods.CreateScrollbar(devConsole, rotation)
	local scrollbar = {}

	local main = nil
	main = Primitives.FolderFrame(main, 'Scrollbar')
	scrollbar.Frame = main

	local frame = Primitives.Button(main, 'Frame')
	frame.AutoButtonColor = false
	frame.Size = UDim2_new(1, 0, 1, -(Style.HandleHeight) * 2 - 2)
	frame.Position = UDim2_new(0, 0, 0, Style.HandleHeight + 1)
	-- frame.BackgroundTransparency = 0.75
	
	-- This replaces the scrollbar when it's not being used
	local frame2 = Primitives.Frame(main, 'Frame')
	frame2.Size = UDim2_new(1, 0, 1, 0)
	frame2.Position = UDim2_new(0, 0, 0, 0)
	
	function scrollbar.SetVisible(scrollbar, visible)
		frame.Visible = visible
		frame2.Visible = not visible
	end
	
	local buttonUp = Primitives.ImageButton(frame, 'Up', 'https://www.roblox.com/asset/?id=261880783')
	scrollbar.ButtonUp = buttonUp
	buttonUp.Size = UDim2_new(1, 0, 0, Style.HandleHeight)
	buttonUp.Position = UDim2_new(0, 0, 0, -Style.HandleHeight - 1)
	buttonUp.AutoButtonColor = false
	devConsole:ConnectButtonHover(buttonUp, devConsole:CreateButtonEffectFunction(buttonUp))

	local buttonDown = Primitives.ImageButton(frame, 'Down', 'https://www.roblox.com/asset/?id=261880783')
	scrollbar.ButtonDown = buttonDown
	buttonDown.Size = UDim2_new(1, 0, 0, Style.HandleHeight)
	buttonDown.Position = UDim2_new(0, 0, 1, 1)
	buttonDown.Rotation = 180
	buttonDown.AutoButtonColor = false
	devConsole:ConnectButtonHover(buttonDown, devConsole:CreateButtonEffectFunction(buttonDown))

	local bar = Primitives.Button(frame, 'Bar')
	bar.Size = UDim2_new(1, 0, 0.5, 0)
	bar.Position = UDim2_new(0, 0, 0.25, 0)
	
	bar.AutoButtonColor = false
	
	local grip = Primitives.InvisibleImageLabel(bar, 'Image', 'https://www.roblox.com/asset/?id=261904959')
	grip.Size = UDim2_new(0, 16, 0, 16)
	grip.Position = UDim2_new(0.5, -8, 0.5, -8)

	local buttonEffectFunction = devConsole:CreateButtonEffectFunction(bar, nil, bar.BackgroundColor3, bar.BackgroundColor3)
	
	-- Inertial scrolling would be added around here
	
	local value = 1
	local valueChanged = CreateSignal()
	scrollbar.ValueChanged = valueChanged
	-- value = 0: at very top
	-- value = 1: at very bottom
	
	local height = 0.25
	local heightChanged = CreateSignal()
	scrollbar.HeightChanged = heightChanged
	-- height = 0: infinite page size
	-- height = 1: bar fills frame completely, no need to scroll
	
	local function getValueAtPosition(pos)
		return ((pos - main.AbsolutePosition.Y) / main.AbsoluteSize.Y) / (1 - height)
	end
	
	-- Refreshes the position and size of the scrollbar
	local function refresh()
		local y = height
		bar.Size = UDim2_new(1, 0, y, 0)
		bar.Position = UDim2_new(0, 0, value * (1 - y), 0)
	end
	refresh()
	
	function scrollbar.SetValue(scrollbar, valueNew)
		if valueNew < 0 then
			valueNew = 0
		elseif valueNew > 1 then
			valueNew = 1
		end
		if valueNew ~= value then
			value = valueNew
			refresh()
			valueChanged:fire(valueNew)
		end
	end
	function scrollbar.GetValue(scrollbar)
		return value
	end
	
	function scrollbar.Scroll(scrollbar, direction, windowHeight, bodyHeight)
		scrollbar:SetValue(value + direction / bodyHeight) -- needs to be adjusted
	end
	
	function scrollbar.SetHeight(scrollbar, heightNew)
		if heightNew < 0 then
			heightNew = 0 -- this is still an awkward case of divide-by-zero that shouldn't happen
		elseif heightNew > 1 then
			heightNew = 1
		end
		heightNew = math.max(heightNew, 0.1) -- Minimum scroll bar size, from that point on it is not the actual ratio
		if heightNew ~= height then
			height = heightNew
			scrollbar:SetVisible(heightNew < 1)
			refresh()
			heightChanged:fire(heightNew)
		end
	end
	function scrollbar.GetHeight(scrollbar)
		return height
	end

	devConsole:ConnectButtonDragging(bar, function()
		local value0 = value -- starting value
		return function(dx, dy)
			local dposition = dy -- net position change relative to the bar's axis (could support rotated scroll bars)
			local dvalue = (dposition / frame.AbsoluteSize.Y) / (1 - height) -- net value change
			scrollbar:SetValue(value0 + dvalue)
		end
	end, buttonEffectFunction)
	
	return scrollbar
end

----------------------
-- Fancy color lerp --
----------------------
local RenderLerpAnimation; do
	local math_cos = math.cos
	local math_pi = math.pi
	function RenderLerpAnimation(disconnectSignal, length, callback)
		disconnectSignal:fire()
		local timeStamp = tick()
		local listener = RunService.RenderStepped:connect(function()
			local t = (tick() - timeStamp) / length
			if t >= 1 then
				t = 1
				disconnectSignal:fire()
			else
				t = (1 - math_cos(t * math_pi)) / 2 -- cosine interpolation aka 'Sine' in :TweenSizeAndPosition
			end
			callback(t)
		end)
		disconnectSignal:connect(listener)
		return listener
	end
end

if EYECANDY_ENABLED then
	-- This is the pretty version
	function Methods.CreateButtonEffectFunction(devConsole, button, normalColor, clickingColor, hoveringColor)
		normalColor = normalColor or button.BackgroundColor3
		clickingColor = clickingColor or Style.GetButtonDownColor(normalColor)
		hoveringColor = hoveringColor or Style.GetButtonHoverColor(normalColor)
		local disconnectSignal = CreateDisconnectSignal()
		return function(clicking, hovering)
			local color0 = button.BackgroundColor3
			local color1 = clicking and clickingColor or (hovering and hoveringColor or normalColor)
			local r0, g0, b0 = color0.r, color0.g, color0.b
			local r1, g1, b1 = color1.r, color1.g, color1.b
			local r2, g2, b2 = r1 - r0, g1 - g0, b1 - b0
			RenderLerpAnimation(disconnectSignal, clicking and 0.125 or 0.25, function(t)
				button.BackgroundColor3 = Color3_new(r0 + r2 * t, g0 + g2 * t, b0 + b2 * t)
			end)
		end
	end
else
	-- This is the simple version
	function Methods.CreateButtonEffectFunction(devConsole, button, normalColor, clickingColor, hoveringColor)
		normalColor = normalColor or button.BackgroundColor3
		clickingColor = clickingColor or Style.GetButtonDownColor(normalColor)
		hoveringColor = hoveringColor or Style.GetButtonHoverColor(normalColor)
		return function(clicking, hovering)
			button.BackgroundColor3 = clicking and clickingColor or (hovering and hoveringColor or normalColor)
		end
	end
end

function Methods.GenerateOptionButtonAnimationToggle(devConsole, interior, button, gear, tabContainer, optionsClippingFrame, optionsFrame)
	
	local tabContainerSize0 = tabContainer.Size
	local tabContainerSize1 = UDim2_new(
		tabContainerSize0.X.Scale, tabContainerSize0.X.Offset + (Style.GearSize + 2) + Style.BorderSize,
		tabContainerSize0.Y.Scale, tabContainerSize0.Y.Offset)
		
	local gearRotation0 = gear.Rotation
	local gearRotation1 = gear.Rotation - 90
	local interiorSize0 = interior.Size
	local interiorSize1 = UDim2_new(interiorSize0.X.Scale, interiorSize0.X.Offset, interiorSize0.Y.Scale, interiorSize0.Y.Offset - Style.OptionAreaHeight)
	local interiorPosition0 = interior.Position
	local interiorPosition1 = UDim2_new(interiorPosition0.X.Scale, interiorPosition0.X.Offset, interiorPosition0.Y.Scale, interiorPosition0.Y.Offset + Style.OptionAreaHeight)
	
	local length = 0.5
	local disconnector = CreateDisconnectSignal()
	return function(open)
		if open then
			interior:TweenSizeAndPosition(interiorSize1, interiorPosition1, 'Out', 'Sine', length, true)
			tabContainer:TweenSize(tabContainerSize1, 'Out', 'Sine', length, true)
			optionsClippingFrame:TweenSizeAndPosition(
				UDim2_new(1, 0, 0, Style.OptionAreaHeight),
				UDim2_new(0, 0, 0, -Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			optionsFrame:TweenPosition(
				UDim2_new(0, 0, 0, 0),-- -Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			local gearRotation = gear.Rotation
			RenderLerpAnimation(disconnector, length, function(t)
				gear.Rotation = gearRotation1 * t + gearRotation * (1 - t)
			end)
		else
			interior:TweenSizeAndPosition(interiorSize0, interiorPosition0, 'Out', 'Sine', length, true)
			tabContainer:TweenSize(tabContainerSize0, 'Out', 'Sine', length, true)
			optionsClippingFrame:TweenSizeAndPosition(
				UDim2_new(1, 0, 0, 0),
				UDim2_new(0, 0, 0, 0),
				'Out', 'Sine', length, true
			)
			optionsFrame:TweenPosition(
				UDim2_new(0, 0, 0, Style.OptionAreaHeight),
				'Out', 'Sine', length, true
			)
			local gearRotation = gear.Rotation
			RenderLerpAnimation(disconnector, length, function(t)
				gear.Rotation = gearRotation0 * t + gearRotation * (1 - t)
			end)
		end	
	end
end

------------------------------
-- Events for color effects --
------------------------------
do
	local globalInteractEvent = CreateSignal()
	function Methods.ConnectButtonHover(devConsole, button, mouseInteractCallback)
		-- void mouseInteractCallback(bool clicking, bool hovering)
		
		local this = {}
		
		local clicking = false
		local hovering = false
		local function set(clickingNew, hoveringNew)
			if hoveringNew and TouchEnabled then
				hoveringNew = false -- Touch screens don't hover
			end
			if clickingNew ~= clicking or hoveringNew ~= hovering then
				clicking, hovering = clickingNew, hoveringNew
				mouseInteractCallback(clicking, hovering)
			end
		end
		
		button.MouseButton1Down:connect(function()
			set(true, true)
		end)
		button.MouseButton1Up:connect(function()
			set(false, true)
		end)
		button.MouseEnter:connect(function()
			set(clicking, true)
		end)
		button.MouseLeave:connect(function()
			set(false, false)
		end)
		--[[ these might cause memory leakes (when creating temporary buttons)
		-- This solves the case in which the user presses F9 while hovering over a button
		devConsole.VisibleChanged:connect(function()
			set(false, false)
		end)
		
		globalInteractEvent:connect(function()
			set(false, false)
		end)
		--]]
	end
end

-------------------------
-- Events for draggers -- (for the window's top handle, the resize button, and scrollbars)
-------------------------
function Methods.ConnectButtonDragging(devConsole, button, dragCallback, mouseInteractCallback)
	
	-- How dragCallback is called: local deltaCallback = dragCallback(xPositionAtMouseDown, yPositionAtMouseDown)
	-- How deltaCallback is called: deltaCallback(netChangeInAbsoluteXPositionSinceMouseDown, netChangeInAbsoluteYPositionSinceMouseDown)
	
	local dragging = false -- AKA 'clicking'
	local hovering = false
	
	local listeners = {}
	
	local disconnectCallback;
	
	local function stopDragging()
		if not dragging then
			return
		end
		dragging = false
		mouseInteractCallback(dragging, hovering)
		for i = #listeners, 1, -1 do
			listeners[i]:disconnect()
			listeners[i] = nil
		end
	end
	
	local ButtonUserInputTypes = {
		[Enum.UserInputType.MouseButton1] = true;
		[Enum.UserInputType.Touch] = true; -- I'm not sure if touch actually works here
	}
	

	local function startDragging(startP)
		if dragging then
			return
		end
		dragging = true
		
		mouseInteractCallback(dragging, hovering)
		local deltaCallback;
		
		local x0, y0 = startP.X, startP.Y
		--[[
		listeners[#listeners + 1] = UserInputService.InputBegan:connect(function(input)
			if ButtonUserInputTypes[input.UserInputType] then
				local position = input.Position
				if position and not x0 then
					x0, y0 = position.X, position.Y -- The same click
				end
			end
		end)
		--]]
		listeners[#listeners + 1] = UserInputService.InputEnded:connect(function(input)
			if ButtonUserInputTypes[input.UserInputType] then
				stopDragging()
			end
		end)
		listeners[#listeners + 1] = UserInputService.InputChanged:connect(function(input)
		
			if not (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch)then -- added in a touch check
				return
			end
			
			local p1 = input.Position

			if not p1 then
				return
			end
			local x1, y1 = p1.X, p1.Y
			if not deltaCallback then
				deltaCallback, disconnectCallback = dragCallback(x0 or x1, y0 or y1)
			end
			if x0 then
				deltaCallback(x1 - x0, y1 - y0)
			end
		end)
	end
	
	--button.MouseButton1Down:connect(startDragging)
	--button.MouseButton1Up:connect(stopDragging)
	
	button.InputBegan:connect(function(iobj)
		if iobj.UserInputType == Enum.UserInputType.Touch or iobj.UserInputType == Enum.UserInputType.MouseButton1 then
			startDragging(iobj.Position)
		end
	end)
	
	button.InputEnded:connect(function(iobj)
		if iobj.UserInputType == Enum.UserInputType.Touch or iobj.UserInputType == Enum.UserInputType.MouseButton1 then
			stopDragging()
		end
	end)	
	
	button.MouseEnter:connect(function()
		if not hovering then
			hovering = true
			mouseInteractCallback(dragging, hovering)
		end
	end)
	button.MouseLeave:connect(function()
		if hovering then
			hovering = false
			mouseInteractCallback(dragging, hovering)
		end
	end)
	
	devConsole.VisibleChanged:connect(stopDragging)
end

-----------------
-- Permissions --
-----------------
do
	local permissionsLoading, permissions = false;
	function DeveloperConsole.GetPermissions()
		while permissionsLoading do wait() end
		
		if permissions then
			return permissions
		end
		
		permissions = {}
		permissionsLoading = true
		permissions.IsCreator = false

		local success, result = pcall(function()
			local url = string.format("/users/%d/canmanage/%d", game:GetService("Players").LocalPlayer.UserId, game.PlaceId)
			return game:GetService('HttpRbxApiService'):GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
		end)
		if success and type(result) == "string" then
			-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
			-- Convert from JSON to a table
			-- pcall in case of invalid JSON
			success, result = pcall(function()
				return game:GetService('HttpService'):JSONDecode(result)
			end)
			if success and result.CanManage == true then
				permissions.IsCreator = result.CanManage
			end
		end
		
		permissions.ClientCodeExecutionEnabled = false
		pcall(function()
			permissions.ServerCodeExecutionEnabled = permissions.IsCreator and (not settings():GetFFlag("DebugDisableLogServiceExecuteScript"))
		end)
		
		if DEBUG or (RunService:IsStudio()) then
			permissions.IsCreator = true
			permissions.ServerCodeExecutionEnabled = true
		end
		
		permissions.MayViewServerLog = permissions.IsCreator
		permissions.MayViewClientLog = true
		
		permissions.MayViewServerStats = permissions.IsCreator
		permissions.MayViewServerMemory = permissions.IsCreator
		permissions.MayViewServerScripts = permissions.IsCreator
		permissions.MayViewServerJobs = permissions.IsCreator

		permissions.MayViewDataStoreBudget = false
		pcall(function()
			permissions.MayViewDataStoreBudget = permissions.IsCreator
		end)
		permissions.MayViewHttpResultClient = false
		permissions.MayViewHttpResultClient = permissions.IsCreator
		permissions.MayViewHttpResultServer = false
		permissions.MayViewHttpResultServer = permissions.IsCreator

		permissions.MayViewContextActionBindings = permissions.IsCreator
		
		permissionsLoading = false
		
		return permissions
	end
end

----------------------
-- Output interface --
----------------------
do
	local messagesAndStats;
	function DeveloperConsole.GetMessagesAndStats(permissions)
		
		if messagesAndStats then
			return messagesAndStats
		end
	
		local function NewOutputMessageSync(getMessages)
			local this;
			this = {
				Messages = nil; -- Private member, DeveloperConsole should use :GetMessages()
				MessageAdded = CreateSignal();
				GetMessages = function()
					local messages = this.Messages
					if not messages then
						-- If it errors while getting messages, it skip it next time
						if this.Attempted then
							messages = {}
						else
							this.Attempted = true
							messages = getMessages(this)
							this.Messages = messages
						end
		
					end
					return messages
				end;
			}
			return this
		end
		
		local ConvertTimeStamp; do
			-- Easy, fast, and working nicely
			local function numberWithZero(num)
				return (num < 10 and "0" or "") .. num
			end
			local string_format = string.format -- optimization
			function ConvertTimeStamp(timeStamp)
				local localTime = timeStamp - os_time() + math.floor(tick())
				local dayTime = localTime % 86400
						
				local hour = math.floor(dayTime/3600)
				
				dayTime = dayTime - (hour * 3600)
				local minute = math.floor(dayTime/60)
				
				dayTime = dayTime - (minute * 60)
				local second = dayTime
	
				local h = numberWithZero(hour)
				local m = numberWithZero(minute)
				local s = numberWithZero(dayTime)
		
				return string_format("%s:%s:%s", h, m, s)
			end
		end
		
		local warningsToFilter = {"ClassDescriptor failed to learn", "EventDescriptor failed to learn", "Type failed to learn"}
		
		-- Filter "ClassDescriptor failed to learn" errors
		local function filterMessageOnadd(ex, message)
			if message.Type ~= Enum.MessageType.MessageWarning.Value then
				return false
			end
			local found = false
			for _, filterString in ipairs(warningsToFilter) do
				if string.find(message.Message, filterString) ~= nil then
					found = true
					break
				end
			end
			return found
		end
	
		local outputMessageSyncLocal;
		if permissions.MayViewClientLog then
			outputMessageSyncLocal = NewOutputMessageSync(function(this)
				local messages = {}
				
				local LogService = game:GetService("LogService")
				do -- This do block keeps history from sticking around in memory
					local history = LogService:GetLogHistory()
					for i = 1, #history do
						local msg = history[i]
						local message = {
							Message = msg.message or "[DevConsole Error 1]";
							Time = ConvertTimeStamp(msg.timestamp);
							Type = msg.messageType.Value;
						}
						if not filterMessageOnadd(ex, message) then
							messages[#messages + 1] = message
						end
					end
				end
				
				LogService.MessageOut:connect(function(text, messageType)
					local message = {
						Message = text or "[DevConsole Error 2]";
						Time = ConvertTimeStamp(os_time());
						Type = messageType.Value;
					}
					if not filterMessageOnadd(ex, message) then
						messages[#messages + 1] = message
						this.MessageAdded:fire(message)
					end
				end)
			
				return messages
			end)
		end
		
		local outputMessageSyncServer;
		if permissions.MayViewServerLog then
			outputMessageSyncServer = NewOutputMessageSync(function(this)
				local messages = {}
				
				local LogService = game:GetService("LogService")
				
				LogService.ServerMessageOut:connect(function(text, messageType, timestamp)
					local message = {
						Message = text or "[DevConsole Error 3]";
						Time = ConvertTimeStamp(timestamp);
						Type = messageType.Value;
					}
					if not filterMessageOnadd(ex, message) then
						messages[#messages + 1] = message
						this.MessageAdded:fire(message)
					end
				end)
				LogService:RequestServerOutput()
				
				return messages
			end)
		end
	
		local statsSyncServer;
		if (permissions.MayViewServerStats or 
			permissions.MayViewServerScripts or 
			permissions.MayViewServerMemory) then
			
			statsSyncServer = {
				Stats = nil; -- Private member, use GetStats instead
				StatsReceived = CreateSignal();
			}
			local statsListenerConnection;
			function statsSyncServer.GetStats(statsSyncServer)
				local stats = statsSyncServer.Stats
				if not stats then
					stats = {}
					pcall(function()
						local clientReplicator = game:FindService("NetworkClient"):GetChildren()[1]
							if clientReplicator then
							statsListenerConnection = clientReplicator.StatsReceived:connect(function(stat)
								statsSyncServer.StatsReceived:fire(stat)
							end)
							clientReplicator:RequestServerStats(true)
						end
					end)
					statsSyncServer.Stats = stats
				end
				return stats
			end
			
		end
		--]]
		
		messagesAndStats = {
			OutputMessageSyncLocal = outputMessageSyncLocal;
			OutputMessageSyncServer = outputMessageSyncServer;
			StatsSyncServer = statsSyncServer;
		}
		
		return messagesAndStats
	end
end

--[[ Module Table ]]--
-- We only create the dev console if we need it; user toggles visibility.

local DevConsoleModuleTable = {}
local myDeveloperConsole = nil

-- Tenfoot Interface set up
local function onDevConsoleVisibilityChanged(isVisible)
	local blockMenuActionName = "blockMenuAction"
	local closeDevConsoleActionName = "closeDevConsoleAction"
	local selectionParentName = "devConsoleSelectionGroup"

	local function closeDevConsole(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.End then
			myDeveloperConsole:SetVisible(false)
		end
	end

	if isVisible then
		-- block menu open input while dev console is open
		ContextActionService:BindCoreAction(blockMenuActionName, function() end, false, Enum.KeyCode.ButtonStart)

		local menuModule = require(Modules.Settings.SettingsHub)
		menuModule:SetVisibility(false, true)
		ContextActionService:BindCoreAction(closeDevConsoleActionName, closeDevConsole, false, Enum.KeyCode.ButtonB)

		GuiService:AddSelectionParent(selectionParentName, myDeveloperConsole.Frame)
		GuiService.SelectedCoreObject = myDeveloperConsole.CurrentOpenedTab
	else
		ContextActionService:UnbindCoreAction(closeDevConsoleActionName)
		ContextActionService:UnbindCoreAction(blockMenuActionName)

		GuiService:RemoveSelectionGroup(selectionParentName)
		GuiService.SelectedCoreObject = nil
	end
end

local devConsoleCreating = false
local function getDeveloperConsole()
	if (not myDeveloperConsole and not devConsoleCreating) then
		devConsoleCreating = true
		local permissions = DeveloperConsole.GetPermissions()
		local messagesAndStats = DeveloperConsole.GetMessagesAndStats(permissions)

		myDeveloperConsole = DeveloperConsole.new(RobloxGui, permissions, messagesAndStats)

		if isTenFootInterface then
			myDeveloperConsole.VisibleChanged:connect(onDevConsoleVisibilityChanged)
		end
		devConsoleCreating = false
	end
	return myDeveloperConsole
end

function DevConsoleModuleTable:GetVisibility()
	local devConsole = getDeveloperConsole()
	if devConsole then
		return devConsole.Visible
	else
		return false
	end
end

function DevConsoleModuleTable:SetVisibility(value)
	local devConsole = getDeveloperConsole()
	if devConsole then
		devConsole:SetVisible(value)
	end
end


local creatingLock = false
local creatingVisibleValueToSet = false

local function SetCoreConsoleCreation()
	if (creatingLock) then return end
	creatingLock = true

	spawn(function()
		--// Keep GetVisibility call before SetVisibility because the first call will yield for some time and 
		--// there is the possibility that during the yield time the value of 'creatingVisibleValueToSet' may
		--// change.
		DevConsoleModuleTable:GetVisibility()
		DevConsoleModuleTable:SetVisibility(creatingVisibleValueToSet)

		creatingLock = false
	end)
end

local StarterGui = game:GetService("StarterGui")
local function GetDeveloperConsoleVisible()
	if (not myDeveloperConsole) then
		SetCoreConsoleCreation()
		return creatingVisibleValueToSet;
	else
		return DevConsoleModuleTable:GetVisibility()
	end
end

local function DeveloperConsoleVisible(visible)
	if (type(visible) ~= "boolean") then
		error("DeveloperConsoleVisible must be given a boolean value.")
	end

	if (not myDeveloperConsole) then
		creatingVisibleValueToSet = visible
		SetCoreConsoleCreation()
	else
		DevConsoleModuleTable:SetVisibility(visible)
	end
end

-- BetterConsole.lua by Josh#0903
local InputService  = game:GetService'UserInputService'
local StarterGui    = game:GetService'StarterGui'

InputService.InputBegan:connect(function(a)
   if a.UserInputType == Enum.UserInputType.Keyboard and a.KeyCode == Enum.KeyCode.F9 then
       local b = GetDeveloperConsoleVisible();
       StarterGui:SetCore('DevConsoleVisible', false)
       DeveloperConsoleVisible(not b)
   end
end)
end
oldcon()

