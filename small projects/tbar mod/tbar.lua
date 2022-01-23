if not game:IsLoaded() then
    game.Loaded:Wait()
end

wait(1)
print("ty so fucking much colastee/simradius for making the playerlist and fixing this up a bit u is such a help (creds to colastee)")

local a, b = pcall(function()
local playerlist = Instance.new("ScreenGui")
local PlayerListContainer = Instance.new("Frame")
local ScrollList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local PopupClipFrame = Instance.new("Frame")
local You = Instance.new("Frame")
local BGFrame = Instance.new("TextButton")
local MembershipIcon = Instance.new("ImageLabel")
local PlayerName = Instance.new("TextLabel")
local scriptt = Instance.new('LocalScript', PlayerListContainer)
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)

playerlist.Name = "playerlist"
playerlist.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
playerlist.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

PlayerListContainer.Name = "PlayerListContainer"
PlayerListContainer.Parent = playerlist
PlayerListContainer.BackgroundTransparency = 1.000
PlayerListContainer.Position = UDim2.new(1, -170, 0, 2)
PlayerListContainer.Size = UDim2.new(0, 170, 0.5, 0)

ScrollList.Name = "ScrollList"
ScrollList.Parent = PlayerListContainer
ScrollList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollList.BackgroundTransparency = 1.000
ScrollList.BorderSizePixel = 0
ScrollList.Selectable = false
ScrollList.Size = UDim2.new(0, 170, 1, 0)
ScrollList.BottomImage = "rbxasset://textures/ui/scroll-bottom.png"
ScrollList.CanvasSize = UDim2.new(0, 0, 0, 100)
ScrollList.MidImage = "rbxasset://textures/ui/scroll-middle.png"
ScrollList.ScrollBarThickness = 6
ScrollList.TopImage = "rbxasset://textures/ui/scroll-top.png"

UIListLayout.Parent = ScrollList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

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

local function VIBXX_fake_script() -- PlayerListContainer.LocalScript 

	for _,v in pairs(game.Players:GetChildren()) do
		local ex = scriptt.You:Clone()
		ex.Name = v.Name
		ex.Parent = scriptt.Parent.ScrollList
		ex.BGFrame.PlayerName.Text = v.Name
		game.Players.PlayerRemoving:Connect(function(p)
			if p.Name == ex.BGFrame.PlayerName.Text then
				local target = scriptt.Parent.ScrollList:FindFirstChild(p.Name)
				target:Destroy()
			end
		end)
	end
		game.Players.PlayerAdded:Connect(function(p)
			local exe = scriptt.You:Clone()
			exe.Name = p.Name
			exe.Parent = scriptt.Parent.ScrollList
			exe.BGFrame.PlayerName.Text = p.Name
		end)
end
coroutine.wrap(VIBXX_fake_script)()
end)
print(b)

local tbar = game:GetService("CoreGui").ThemeProvider.TopBarFrame
local chatico = tbar.LeftFrame.ChatIcon.Background.Icon
local UIS = game:GetService("UserInputService")

tbar.Transparency = 0.5
tbar.BorderSizePixel = 0
tbar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

tbar.LeftFrame.MenuIcon.Background.Image = ""
tbar.LeftFrame.ChatIcon.Background.Image = ""
tbar.RightFrame.MoreMenu.OpenButton.Image = ""

tbar.LeftFrame.Position = UDim2.new(0, 0, 0, 2)
tbar.LeftFrame.Size = UDim2.new(0, 0, 0, 36)

tbar.LeftFrame.MenuIcon.Position = UDim2.new(0, 0, 0, 0)
tbar.LeftFrame.MenuIcon.Size = UDim2.new(0, 50, 0, 36)
tbar.LeftFrame.MenuIcon.Background.Icon.Position = UDim2.new(0, 25, 0, 12)
tbar.LeftFrame.MenuIcon.Background.Icon.Size = UDim2.new(0, 32, 0, 25)
game.CoreGui.ThemeProvider.LegacyCloseMenu.CloseMenuButton.Position = UDim2.new(0, -8, 0, 18)
game.CoreGui.ThemeProvider.LegacyCloseMenu.CloseMenuButton.Size = UDim2.new(0, 32, 0, 25)

tbar.LeftFrame.ChatIcon.Position = UDim2.new(0, 0, 0, 0)
tbar.LeftFrame.ChatIcon.Size = UDim2.new(0, 50, 0, 36)
tbar.LeftFrame.ChatIcon.Background.Icon.Position = UDim2.new(0, 14, 0, 13)
tbar.LeftFrame.ChatIcon.Background.Icon.Size = UDim2.new(0, 28, 0, 27)


tbar.LeftFrame.MenuIcon.Background.Icon.Image = "rbxasset://textures/ui/Menu/Hamburger.png"
tbar.LeftFrame.ChatIcon.Background.StateOverlay.Image = ""
tbar.RightFrame.MoreMenu.OpenButton.StateOverlay.Image = ""
tbar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""

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
game.RunService.Heartbeat:Connect(function()
    tbar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""
    tbar.RightFrame.MoreMenu.OpenButton.Icon.Image = ""
    if tbar.LeftFrame.ChatIcon.BadgeContainer then
        tbar.LeftFrame.ChatIcon.BadgeContainer.Badge.Inner.Image = "rbxasset://textures/ui/Chat/MessageCounter.png"
        tbar.LeftFrame.ChatIcon.BadgeContainer.Badge.Inner.ImageRectOffset = Vector2.new(0, 0)
        tbar.LeftFrame.ChatIcon.BadgeContainer.Badge.Inner.ImageRectSize = Vector2.new(0, 0)
        tbar.LeftFrame.ChatIcon.BadgeContainer.Badge.Inner.TextLabel:Destroy()
        tbar.LeftFrame.ChatIcon.BadgeContainer.Badge.Background:Destroy()
    end
    game.CoreGui.ThemeProvider.LegacyCloseMenu.CloseMenuButton.Image = "rbxasset://textures/ui/Menu/HamburgerDown.png"
    game.CoreGui.ThemeProvider.LegacyCloseMenu.CloseMenuButton.ImageRectOffset = Vector2.new(0, 0)
    game.CoreGui.ThemeProvider.LegacyCloseMenu.CloseMenuButton.ImageRectSize = Vector2.new(0, 0)
end)
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    changechatico()
end)

