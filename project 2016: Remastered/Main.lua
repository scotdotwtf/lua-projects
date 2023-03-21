--// load old loading screen before anything else
loadstring(game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/modules/old_load.lua"))()

--[[
    
    --// REMEMBER IF U ARE BUILDING THIS YOURSELF WITHOUT LOADSTRING U MUST HAVE THE SETTINGS TABLE, UNCOMMENT THIS BLOCK

    --// config settings
    getgenv().config = {
        old_console = true,
        old_plist = true,
        old_graphics = true,
        dev = false
    }

    --// mods
    getgenv().mods = {
        fps_counter = false,
        built_in_silentre = false,
        c00l_mode = false
    }

]]

--// FEW DONT WORK *yet* WILL BE ADDED!
--[[ 
    things to be added:

    - teams
]]

warn("\n"..[[

    # 2016 remastered

    - made code a lil better
    - based off the original source
    - original by me and mainly all the work from cola

    - also credit to luatsuki/Wally/Josh#0903 (idk) for the old console script :>

    // spec

]])

if not game:IsLoaded() then
    game.Loaded:Wait()
end
wait(0.1)

--// variables/modules
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

local TopBar = game:GetService("CoreGui"):WaitForChild("TopBarApp"):WaitForChild("TopBarFrame")
local ChatIcon = TopBar:WaitForChild("LeftFrame"):WaitForChild("ChatIcon"):WaitForChild("Background"):WaitForChild("Icon")

local UIS = game:GetService("UserInputService")

local function devprint(text)
    if config.dev then
        print(text)
    end
end

--// custom assets
local getasset = getsynasset or getcustomasset
makefolder("2016_storage")

writefile("2016_storage/bc.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/icon_BC-16.png"))
writefile("2016_storage/tbc.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/icon_TBC-16.png"))
writefile("2016_storage/obc.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/icon_OBC-16.png"))

local bc_storage = {
    getasset("2016_storage/bc.png"),
    getasset("2016_storage/obc.png"),
    getasset("2016_storage/tbc.png")
}

--// STYLE:
TopBar.Transparency = 0.5
TopBar.BorderSizePixel = 0
TopBar.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

TopBar.LeftFrame.ChatIcon.Background.StateOverlay.Image = ""
TopBar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""

TopBar.LeftFrame.MenuIcon.Background.Image = ""
TopBar.LeftFrame.ChatIcon.Background.Image = ""

TopBar.LeftFrame.Position = UDim2.new(0, 0, 0, 2)
TopBar.LeftFrame.Size = UDim2.new(0, 0, 0, 36)

TopBar.LeftFrame.MenuIcon.Position = UDim2.new(0, 0, 0, 0)
TopBar.LeftFrame.MenuIcon.Size = UDim2.new(0, 50, 0, 36)
TopBar.LeftFrame.MenuIcon.Background.Icon.Position = UDim2.new(0, 25, 0, 12)
TopBar.LeftFrame.MenuIcon.Background.Icon.Size = UDim2.new(0, 32, 0, 25)
game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.Position = UDim2.new(0, -8, 0, 18)
game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.Size = UDim2.new(0, 32, 0, 25)

TopBar.LeftFrame.ChatIcon.Position = UDim2.new(0, 0, 0, 0)
TopBar.LeftFrame.ChatIcon.Size = UDim2.new(0, 50, 0, 36)
TopBar.LeftFrame.ChatIcon.Background.Icon.Position = UDim2.new(0, 14, 0, 13)
TopBar.LeftFrame.ChatIcon.Background.Icon.Size = UDim2.new(0, 28, 0, 27)

TopBar.LeftFrame.MenuIcon.Background.Icon.Image = "rbxasset://textures/ui/Menu/Hamburger.png"

--// FUNCTIONS:

--// old graphics
if config.old_graphics == true then
    --// epic 2016 remastered--// instances
    local cc = Instance.new("ColorCorrectionEffect")
    local lighting = game:GetService("Lighting")

    --// hd killer
    local ihateu = {"DepthOfFieldEffect", "SunRaysEffect", "BloomEffect", "BlurEffect", "ColorCorrectionEffect", "Atmosphere"}
    for i, v in pairs(lighting:GetChildren()) do
        for index, value in ipairs(ihateu) do
            if v:IsA(value) then
            v:Destroy() 
            end
        end
    end

    --// setup
    cc.Parent = game.Lighting
    cc.Saturation = 0
    cc.Contrast = -0.1
    lighting.GlobalShadows = false

    sethiddenproperty(lighting, "Technology", Enum.Technology.Compatibility) 

    settings().Rendering.QualityLevel = 14

    devprint("loaded old graphics!")
end

--// thanks for most of the stud tex func beyond5d 😋
for _, v in ipairs(game:GetDescendants()) do
    if v:IsA("BasePart") and v.Material == Enum.Material.Plastic and v.TopSurface == Enum.SurfaceType.Studs then
		if not v:FindFirstChildOfClass("Texture") then
    		local Studs = Instance.new("Texture")
    		Studs.Parent = v
    		Studs.Face = Enum.NormalId.Top
    		Studs.Texture = "rbxassetid://7027211371"
    		Studs.Color3 = Color3.new(v.Color.R * 2, v.Color.G * 2, v.Color.B * 2)
    		Studs.Transparency = v.Transparency
		end
    end
end

--// cursor
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
mouse.Icon = 'rbxasset://textures/ArrowFarCursor.png'

--// fps mod *runs before health bar script
if mods.fps_counter then
    local fps_counter = Instance.new("TextLabel")

    fps_counter.Name = "fps_counter"
    fps_counter.Parent = TopBar.RightFrame
    fps_counter.BackgroundTransparency = 1
    fps_counter.Size = UDim2.new(0, 35, 0, 32)
    fps_counter.Font = Enum.Font.SourceSans
    fps_counter.TextColor3 = Color3.fromRGB(255, 255, 255)
    fps_counter.TextSize = 16.000
    fps_counter.TextXAlignment = Enum.TextXAlignment.Right

    local FPS = 0
    local Tiempo = tick()

    spawn(function()
        while game:GetService("RunService").RenderStepped:wait() do
            local Transcurrido = math.abs(Tiempo-tick())
            Tiempo = tick()
            FPS = math.floor(1/Transcurrido)
        end
    end)

    spawn(function()
        while wait(0.25) do
            fps_counter.Text = "FPS: "..tostring(FPS) 
        end
    end)
end

--// health bar scripts
TopBar.RightFrame.HealthBar:Destroy()

local NameHealthContainer = Instance.new("Frame")
local Username = Instance.new("TextLabel")
local HealthContainer = Instance.new("Frame")
local HealthFill = Instance.new("Frame")

NameHealthContainer.Name = "NameHealthContainer"
NameHealthContainer.Parent = game.CoreGui:WaitForChild("TopBarApp").TopBarFrame.RightFrame
NameHealthContainer.BackgroundTransparency = 1.000
NameHealthContainer.Position = UDim2.new(1, -170, 0.027778089, 0)
NameHealthContainer.Size = UDim2.new(0, 170, 1, 0)
NameHealthContainer.Active = false

Username.Name = "Username"
Username.Parent = NameHealthContainer
Username.BackgroundTransparency = 1.000
Username.Position = UDim2.new(0, 19, 0, 0)
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
HealthContainer.Position = UDim2.new(0, 19, 1, -9)
HealthContainer.Size = UDim2.new(1, -14, 0, 3)
HealthContainer.Active = false

HealthFill.Name = "HealthFill"
HealthFill.Parent = HealthContainer
HealthFill.BackgroundColor3 = Color3.fromRGB(27, 252, 107)
HealthFill.BorderSizePixel = 0
HealthFill.Size = UDim2.new(1, 0, 1, 0)
HealthFill.Active = false

Username.Text = game:GetService("Players").LocalPlayer.Name

spawn(function()
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Health,false)
	local player = game.Players.LocalPlayer
	local char = player.Character
		local hm = game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
		if not hm then
			task.wait(1)
			end
	local frame = HealthContainer
	local bar = frame.HealthFill
	game.RunService.Heartbeat:Connect(function()
		bar.Size = UDim2.new(0,(hm.Health / hm.MaxHealth * 160),1,0)

        if hm.Health < hm.MaxHealth and hm.Health > hm.MaxHealth/2 then
            bar.BackgroundColor3 = Color3.new(1-(hm.Health/game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").MaxHealth)+0.5,1,0)
        else
            bar.BackgroundColor3 = Color3.fromRGB(27, 252, 107)
        end
        if game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").Health == game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").MaxHealth/2 then
            bar.BackgroundColor3 = Color3.new(1,1,0)
        end
        if game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").Health < game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").MaxHealth/2 then
            bar.BackgroundColor3 = Color3.new(1,(game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").Health/game.Players.LocalPlayer.Character:FindFirstChildWichIsA("Humanoid").MaxHealth)*2,0)
        end 
	end)
end)

--// chat scripts
if not mods.c00l_mode then
    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:IsFocused() then
                game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = 0.1
            else
                game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency
            end
        end)
    end)
end

local function changechatico()
    if ChatIcon.Image == "rbxasset://textures/ui/TopBar/chatOff.png" then
        ChatIcon.Image = "rbxasset://textures/ui/Chat/Chat@2x.png"
    elseif ChatIcon.Image == "rbxasset://textures/ui/TopBar/chatOn.png" then
        ChatIcon.Image = "rbxasset://textures/ui/Chat/ChatDown@2x.png"
    end		
end

for _,v in pairs(game:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == "Chat '/?' or '/help' for a list of chat commands." then
        v.Text = "Please chat '/?' for a list of commands"
    end
end

changechatico()

spawn(function()
    game:GetService("Players").PlayerChatted:Connect(function(PlayerChatType, sender, message, recipient)
        changechatico()
    end)
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        changechatico()
    end)
end)

--// just something useful from the src i was too lazy to group
game.RunService.Heartbeat:Connect(function()
    if config.old_plist then
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
    end
    TopBar.LeftFrame.MenuIcon.Background.StateOverlay.Image = ""
    if not c00l_mode then
        game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.Image = "rbxasset://textures/ui/Menu/HamburgerDown.png"
    end
    game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.ImageRectOffset = Vector2.new(0, 0)
    game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.ImageRectSize = Vector2.new(0, 0)
    if TopBar.RightFrame:FindFirstChild("MoreMenu") then
        TopBar.RightFrame.MoreMenu:Destroy()
    end
    if TopBar.LeftFrame.ChatIcon:FindFirstChild("BadgeContainer") then
        if TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge") then
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.Image = "rbxasset://textures/ui/Chat/MessageCounter.png"
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ImageRectOffset = Vector2.new(0, 0)
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ImageRectSize = Vector2.new(0, 0)
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner:ClearAllChildren()
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Position = UDim2.new(0, 15, 0, 2)
            TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Inner.ScaleType = Enum.ScaleType.Fit
            if TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge"):FindFirstChild("Background") then
                TopBar.LeftFrame.ChatIcon.BadgeContainer:FindFirstChild("Badge").Background:Destroy()
            end
        end
    end
end)

--// backpack *this part in the original cloned the chat ico which broke it a bit so i'm going to instance.new it*
local ExtraFrame = Instance.new("Frame", TopBar)
local ELayout = Instance.new("UIListLayout", ExtraFrame)

ExtraFrame.Name = "ExtraFrame"
ExtraFrame.Position = UDim2.new(0, 110, 0, 2)
ExtraFrame.Size = UDim2.new(0, 0, 0, 36)
ExtraFrame.BackgroundTransparency = 1

ELayout.FillDirection = Enum.FillDirection.Horizontal
ELayout.SortOrder = Enum.SortOrder.LayoutOrder
ELayout.VerticalAlignment = Enum.VerticalAlignment.Center
ELayout.Padding = UDim.new(0, -8)

local BackpackIcon = Instance.new("TextButton", ExtraFrame) --// fuck roblox for making there listlayout broken and making me having to get the manual placement grrr :angry_1:
local BackpackIcon_Background = Instance.new("ImageButton", BackpackIcon)
local Background_Icon = Instance.new("ImageLabel", BackpackIcon_Background)

BackpackIcon.Name = "BackpackIcon"
BackpackIcon.BackgroundTransparency = 1
BackpackIcon.Position = UDim2.new(0, 0, 0, -34)
BackpackIcon.Size = UDim2.new(0, 50, 0, 36)
BackpackIcon.Text = ""

BackpackIcon_Background.Name = "Background"
BackpackIcon_Background.BackgroundTransparency = 1
BackpackIcon_Background.Position = UDim2.new(0, 0, 0, 0)
BackpackIcon_Background.Size = UDim2.new(0, 30, 0, 32)

Background_Icon.Name = "Icon"
Background_Icon.BackgroundTransparency = 1
Background_Icon.Position = UDim2.new(0, 0, 0, 3)
Background_Icon.Size = UDim2.new(0, 25, 0, 27)

if not mods.c00l_mode then
    game.RunService.Heartbeat:Connect(function()
        if game.CoreGui.RobloxGui.Backpack.Inventory.Visible == true then
            Background_Icon.Image = "rbxasset://textures/ui/Backpack/Backpack_Down@2x.png"
            else
            Background_Icon.Image = "rbxasset://textures/ui/Backpack/Backpack@2x.png"
        end
    end)
end

--/ In the original cola gave up on the backpack thing, I dont blame him but my simple solution is to just make it so your client presses a key. lol
BackpackIcon_Background.MouseButton1Click:Connect(function()
    wait(0.001)
    keypress(0xC0) 
    keyrelease(0xC0)  
end)

--/console
if config.old_console then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/modules/old_console.lua"))()
end

--/ playerlist
if config.old_plist then
    local PlayerListContainer = Instance.new("Frame", TopBar)
    local ScrollList = Instance.new("ScrollingFrame", PlayerListContainer)
    local EPadding = Instance.new("UIPadding", ScrollList)
    local List = Instance.new("UIListLayout", ScrollList)

    PlayerListContainer.Name = "PlayerListContainer"
    PlayerListContainer.BackgroundTransparency = 1.000
    PlayerListContainer.Position = UDim2.new(1, -327, 1, 5)
    PlayerListContainer.Size = UDim2.new(0, 327, 0, 416)

    ScrollList.Name = "ScrollList"
    ScrollList.Size = UDim2.new(1, 0, 1, 0)
    ScrollList.Position = UDim2.new(0, 0, 0, 0)
    ScrollList.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    ScrollList.ClipsDescendants = true
    ScrollList.BackgroundTransparency = 1
    ScrollList.BorderSizePixel = 0
    ScrollList.ScrollBarThickness = 0
    ScrollList.CanvasSize = UDim2.new(0, 0, 2, 0)

    List.SortOrder = Enum.SortOrder.LayoutOrder
    List.VerticalAlignment = Enum.VerticalAlignment.Top
    List.HorizontalAlignment = Enum.HorizontalAlignment.Right
    List.Padding = UDim.new(0, 2)

    EPadding.PaddingBottom = UDim.new(0, 22.4)

    local function addplr(name, is_bc, is_friend, is_dev)
        local Player = Instance.new("TextButton", ScrollList)
        local PPadding = Instance.new("UIPadding", Player)
        local IgnorePaddingFrame = Instance.new("Frame", Player)
        local Icon = Instance.new("ImageLabel", IgnorePaddingFrame)

        Player.Name = name
        Player.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
        Player.BackgroundTransparency = 0.500
        Player.BorderSizePixel = 0
        Player.Size = UDim2.new(0, 170, 0, 24)
        Player.AutoButtonColor = false
        Player.TextSize = 14
        Player.Font = Enum.Font.SourceSans
        Player.TextXAlignment = Enum.TextXAlignment.Left
        Player.TextColor3 = Color3.fromRGB(255, 255, 255)
        Player.Text = name

        PPadding.PaddingLeft = UDim.new(0, 23)

        IgnorePaddingFrame.Name = "IgnorePaddingFrame"
        IgnorePaddingFrame.BackgroundTransparency = 1
        IgnorePaddingFrame.Size = UDim2.new(1, 0, 1, 0)

        Icon.Name = "Icon"
        Icon.BackgroundTransparency = 1.000
        Icon.BorderSizePixel = 0
        Icon.Position = UDim2.new(0, -19, 0.02, 4)
        Icon.Size = UDim2.new(0, 16, 0, 16)

        if is_bc then
            local randobc = bc_storage[math.random(1,#bc_storage)]
            Icon.Image = randobc
        end

        if is_dev then
            Icon.Image = "rbxasset://textures/ui/icon_placeowner.png"
        end

        if is_friend then
            Icon.Image = "rbxasset://textures/ui/icon_friends_16.png"
        end

        local open = false

        Player.MouseButton1Click:Connect(function()
            devprint("got mb1 function")
            if open == false then
                devprint("was not open")

                local ScrollDecend = ScrollList:GetDescendants()
                for i, v in pairs(ScrollDecend) do
                    if v.Name == "PlayerControlsHolder" then
                        v:Destroy()
                    end
                end

                for i, v in pairs(ScrollDecend) do
                    devprint("got descends")
                    if v:IsA("TextButton") then
                        v.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                        devprint("changed bg color")
                    end
                    devprint("went through descends")
                end

                local PlayerControlsHolder = Instance.new("Frame", Player)
                local Temp_List = Instance.new("UIListLayout", PlayerControlsHolder)
                local FriendButton = Instance.new("TextButton", PlayerControlsHolder)
                local ReportButton = Instance.new("TextButton", PlayerControlsHolder)
                --// fix padding
                local FixPadding1 = Instance.new("UIPadding", FriendButton)
                local FixPadding2 = Instance.new("UIPadding", ReportButton)

                FixPadding1.PaddingLeft = UDim.new(0, 36)
                FixPadding2.PaddingLeft = UDim.new(0, 36)
        
                PlayerControlsHolder.Name = "PlayerControlsHolder"
                PlayerControlsHolder.BackgroundTransparency = 1
                PlayerControlsHolder.Size = UDim2.new(1, 0, 1, 0)
                PlayerControlsHolder.Position = UDim2.new(-1, -25, 0, 0)
                PlayerControlsHolder.Visible = true

                FriendButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                FriendButton.BackgroundTransparency = 0.500
                FriendButton.BorderSizePixel = 0
                FriendButton.Size = UDim2.new(0, 170, 0, 24)
                FriendButton.AutoButtonColor = true
                FriendButton.TextSize = 14
                FriendButton.Font = Enum.Font.SourceSans
                FriendButton.TextXAlignment = Enum.TextXAlignment.Left
                FriendButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                FriendButton.Text = "Send a friend request"

                ReportButton.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                ReportButton.BackgroundTransparency = 0.500
                ReportButton.BorderSizePixel = 0
                ReportButton.Size = UDim2.new(0, 170, 0, 24)
                ReportButton.AutoButtonColor = true
                ReportButton.TextSize = 14
                ReportButton.Font = Enum.Font.SourceSans
                ReportButton.TextXAlignment = Enum.TextXAlignment.Left
                ReportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                ReportButton.Text = "Report abuse"

                Temp_List.SortOrder = Enum.SortOrder.LayoutOrder
                Temp_List.VerticalAlignment = Enum.VerticalAlignment.Top
                Temp_List.HorizontalAlignment = Enum.HorizontalAlignment.Right
                Temp_List.Padding = UDim.new(0, 2)

                Player.BackgroundColor3 = Color3.fromRGB(0, 255, 255)

                spawn(function()
                    FriendButton.MouseButton1Click:Connect(function()
                        game.Players.LocalPlayer:RequestFriendship(game.Players:FindFirstChild(Player.Text))
                        if Player:FindFirstChild("PlayerControlsHolder") then
                            Player:FindFirstChild("PlayerControlsHolder"):Destroy()
                            Player.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                        end
                        open = false
                    end)
                end)

                open = true
            elseif open == true then
                devprint("was open")
                Player.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
                open = false
                if Player:FindFirstChild("PlayerControlsHolder") then
                    Player:FindFirstChild("PlayerControlsHolder"):Destroy()
                end
            end
        end)
    end

    local function removeplrfromlist(name)
        local plistchildren = ScrollList:GetChildren()
        for i, v in pairs(plistchildren) do
            if v.Name == name then
                v:Destroy()
            end
        end
    end

    --// this will only run once, this is the activator cause yeah
    for i, v in	 pairs(game:GetService("Players"):GetPlayers()) do
        local function isbc_func()
            if v.MembershipType == Enum.MembershipType.Premium then
                return true
            end
        end

        local function isdev_func()
            if v.UserId == game.CreatorId then
                return true
            end
        end

        local function isfriend_func()
            if v:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                return true
            end
        end

        addplr(v.Name, isbc_func(), isfriend_func(), isdev_func())
    end

    game:GetService("Players").PlayerAdded:Connect(function(player)
        local function isbc_func()
            if player.MembershipType == Enum.MembershipType.Premium then
                return true
            end
        end

        local function isdev_func()
            if player.UserId == game.CreatorId then
                return true
            end
        end

        local function isfriend_func()
            if player:IsFriendsWith(game.Players.LocalPlayer.UserId) then
                return true
            end
        end

        addplr(player.Name, isbc_func(), isfriend_func(), isdev_func())
    end)

    game:GetService("Players").PlayerRemoving:Connect(function(player)
        removeplrfromlist(player.Name)
    end)

    UIS.InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.Tab then
            if PlayerListContainer.Visible == true then
                PlayerListContainer.Visible = false
            else
                PlayerListContainer.Visible = true
            end
        end
    end)
end

--// mods
-- i would put fps here but it needs to run before health bar so yeah

--// silent re
if mods.built_in_silentre then
    devprint("silent re was able to load")
    writefile("2016_storage/Re.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/Fixed%20Re%20Icon.png"))

    local SilentIcon = Instance.new("TextButton", ExtraFrame) --// fuck roblox for making there listlayout broken and making me having to get the manual placement grrr :angry_1:
    local SilentIcon_Background = Instance.new("ImageButton", SilentIcon)
    local Silent_Icon = Instance.new("ImageLabel", SilentIcon_Background)

    SilentIcon.Name = "SilentIcon"
    SilentIcon.BackgroundTransparency = 1
    SilentIcon.Position = UDim2.new(0, 0, 0, -34)
    SilentIcon.Size = UDim2.new(0, 50, 0, 36)
    SilentIcon.Text = ""

    SilentIcon_Background.Name = "Background"
    SilentIcon_Background.BackgroundTransparency = 1
    SilentIcon_Background.Position = UDim2.new(0, 0, 0, 0)
    SilentIcon_Background.Size = UDim2.new(0, 30, 0, 32)

    Silent_Icon.Name = "Icon"
    Silent_Icon.BackgroundTransparency = 1
    Silent_Icon.Position = UDim2.new(0, 0, 0, 3)
    Silent_Icon.Size = UDim2.new(0, 25, 0, 27)
    Silent_Icon.Image = getasset("2016_storage/Re.png")
    Silent_Icon.ScaleType = Enum.ScaleType.Fit

    SilentIcon_Background.MouseButton1Click:Connect(function()
        if game.PlaceId == 5100950559 or game.PlaceId == 6048573718 or game.PlaceId == 6446409152 then
            game:GetService("Players"):Chat("-re")
        else
            local plr = game:GetService("Players").LocalPlayer
            local char = plr.Character

            local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
            local pos = Human and Human.RootPart and Human.RootPart.CFrame
            local pos1 = workspace.CurrentCamera.CFrame

            if char:FindFirstChildOfClass("Humanoid") then
                char:FindFirstChildOfClass("Humanoid"):ChangeState(15)
            end

            char:ClearAllChildren()
            local newChar = Instance.new("Model")
            newChar.Parent = workspace
            plr.Character = newChar
            wait()
            plr.Character = char
            newChar:Destroy()

            task.spawn(function()
                plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
                refreshCmd = false
            end)
        end
    end)
    end

    if mods.c00l_mode then
    devprint("c00l was able to load")
    writefile("2016_storage/c00lest.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/fixed%20c00l%20button.png"))
    writefile("2016_storage/redchatico.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/RedChatDown%402x.png"))
    writefile("2016_storage/redbpico.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/RedBackpack_Down%402x.png"))
    writefile("2016_storage/redmenu.png", game:HttpGet("https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/project%202016%3A%20Remastered/images/RedHamburgerDown%402x.png"))

    local C00lIcon = Instance.new("TextButton", ExtraFrame) --// fuck roblox for making there listlayout broken and making me having to get the manual placement grrr :angry_1:
    local C00lIcon_Background = Instance.new("ImageButton", C00lIcon)
    local C00l_Icon = Instance.new("ImageLabel", C00lIcon_Background)

    C00lIcon.Name = "SilentIcon"
    C00lIcon.BackgroundTransparency = 1
    C00lIcon.Position = UDim2.new(0, 0, 0, -34)
    C00lIcon.Size = UDim2.new(0, 50, 0, 36)
    C00lIcon.Text = ""

    C00lIcon_Background.Name = "Background"
    C00lIcon_Background.BackgroundTransparency = 1
    C00lIcon_Background.Position = UDim2.new(0, 0, 0, 0)
    C00lIcon_Background.Size = UDim2.new(0, 30, 0, 32)

    C00l_Icon.Name = "Icon"
    C00l_Icon.BackgroundTransparency = 1
    C00l_Icon.Position = UDim2.new(0, 0, 0, 3)
    C00l_Icon.Size = UDim2.new(0, 25, 0, 27)
    C00l_Icon.Image = getasset("2016_storage/c00lest.png")
    C00l_Icon.ScaleType = Enum.ScaleType.Fit

    C00lIcon_Background.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MiRw3b/c00lgui-v3rx/main/c00lguiv3rx"))()
    end)

    --// cool mode things
    TopBar.Transparency = 0
    TopBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

    game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

    local function c00l_chat_func()
        if ChatIcon.Image == "rbxasset://textures/ui/TopBar/chatOff.png" then
            ChatIcon.Image = "rbxasset://textures/ui/Chat/Chat@2x.png"
        elseif ChatIcon.Image == "rbxasset://textures/ui/TopBar/chatOn.png" then
            ChatIcon.Image = getasset("2016_storage/redchatico.png")
        end	
    end

    ChatIcon.Visible = false
    wait()
    c00l_chat_func()
    ChatIcon.Visible = true

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            c00l_chat_func()
        end)
    end)

    spawn(function()
        game.RunService.Heartbeat:Connect(function()
            if game.CoreGui.RobloxGui.Backpack.Inventory.Visible == true then
                Background_Icon.Image = getasset("2016_storage/redbpico.png")
                else
                Background_Icon.Image = "rbxasset://textures/ui/Backpack/Backpack@2x.png"
            end
        end)
    end)

    spawn(function()
        game.RunService.Heartbeat:Connect(function()
            game.CoreGui:WaitForChild("TopBarApp").LegacyCloseMenu.CloseMenuButton.Image = getasset("2016_storage/redmenu.png")
        end)
    end)

    spawn(function()
        game:GetService("RunService").Heartbeat:Connect(function()
            if game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar:IsFocused() then
                game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = 0.1
            else
                game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency = game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.BackgroundTransparency
            end
        end)
    end)
end
