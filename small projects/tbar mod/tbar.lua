if not game:IsLoaded() then
    game.Loaded:Wait()
end

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
    wait()
    if chatico.Image == "rbxasset://textures/ui/TopBar/chatOff.png" then
        chatico.Image = "rbxasset://textures/ui/Chat/Chat@2x.png"
    elseif chatico.Image == "rbxasset://textures/ui/TopBar/chatOn.png" then
        chatico.Image = "rbxasset://textures/ui/Chat/ChatDown@2x.png"
    end		
end

tbar.LeftFrame.ChatIcon.Background.MouseButton1Click:Connect(function()
	changechatico()
end)

tbar.LeftFrame.MenuIcon.Background.MouseButton1Click:Connect(function()
	if not game.GuiService.MenuOpened == false then
	    game.GuiService.MenuOpened:Wait()
	end
	changechatico()
end)

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    changechatico()
end)
