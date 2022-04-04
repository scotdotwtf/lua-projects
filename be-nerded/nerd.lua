--// set this as u want
local hat = "Nerd" --// hat link is https://www.roblox.com/catalog/9120783085/Nerd-Alert but u can set it to a dif hat if u feel
local debug_prints = true --// prints when something happens ex: when script welds get deleted

--// keep these as defualt
local VER = "1.0.0c"
local nerd = game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat)
local chr = game:GetService("Players").LocalPlayer.Character
local players = game:GetService('Players')

local ngui = Instance.new("ScreenGui")
local d = Instance.new("Frame")
local l1 = Instance.new("UIListLayout")
local n = Instance.new("TextLabel")
local p = Instance.new("TextBox")
local hb = Instance.new("TextButton")
local hb_2 = Instance.new("TextButton")
local c = Instance.new("Frame")
local cb = Instance.new("TextButton")
local l2 = Instance.new("UIListLayout")

local function debugprint(text)
    if debug_prints == true then
       print(text)
    end
end

local function clearwelds()
    --// vel loop
    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat):WaitForChild("Handle").Velocity = Vector3.new(0, 35, 0)
        end)
    debugprint("vel loopd'd for script welds")
    end)
    wait()
    
    --// delete script attachments
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("Attachment") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("Attachment"):Destroy()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AlignPosition"):Destroy()
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AlignOrientation"):Destroy()
        debugprint("the script weld destroyed")
    end
end




local function renerd()
    --// vel loop
    spawn(function()
        game:GetService("RunService").Heartbeat:connect(function()
            game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat):WaitForChild("Handle").Velocity = Vector3.new(0, 35, 0)
        end)
    debugprint("vel loopd'd")
    end)
    wait()
    
    --// delete hat attachment
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle:FindFirstChild("AccessoryWeld") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.AccessoryWeld:Destroy()
        debugprint("hat weld gon donzo'd")
    end
end

--// define gui
ngui.Name = "ngui"
ngui.Parent = game:GetService("CoreGui")

d.Name = "d"
d.Parent = ngui
d.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
d.BackgroundTransparency = 0.500
d.BorderColor3 = Color3.fromRGB(25, 25, 25)
d.Position = UDim2.new(0.0713541657, 0, 0.107407406, 0)
d.Size = UDim2.new(0, 232, 0, 176)
d.ZIndex = 0

l1.Name = "l1"
l1.Parent = d
l1.HorizontalAlignment = Enum.HorizontalAlignment.Center
l1.SortOrder = Enum.SortOrder.LayoutOrder
l1.Padding = UDim.new(0, 4)

n.Name = "n"
n.Parent = d
n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
n.BackgroundTransparency = 1.000
n.Position = UDim2.new(0.260775864, 0, 0, 0)
n.Size = UDim2.new(0, 120, 0, 28)
n.Font = Enum.Font.RobotoMono
n.Text = "nerd gui :troll:"
n.TextColor3 = Color3.fromRGB(255, 255, 255)
n.TextSize = 14.000

p.Name = "p"
p.Parent = d
p.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
p.BackgroundTransparency = 0.750
p.BorderColor3 = Color3.fromRGB(0, 0, 0)
p.Position = UDim2.new(0.0301724132, 0, 0.13333334, 0)
p.Size = UDim2.new(0, 218, 0, 34)
p.Font = Enum.Font.RobotoMono
p.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
p.PlaceholderText = "player"
p.Text = ""
p.TextColor3 = Color3.fromRGB(255, 255, 255)
p.TextSize = 14.000

hb.Name = "hb"
hb.Parent = d
hb.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
hb.BackgroundTransparency = 0.750
hb.BorderColor3 = Color3.fromRGB(0, 0, 0)
hb.Size = UDim2.new(0, 218, 0, 34)
hb.Font = Enum.Font.RobotoMono
hb.Text = "nerd them"
hb.TextColor3 = Color3.fromRGB(255, 255, 255)
hb.TextSize = 14.000

hb_2.Name = "hb_2"
hb_2.Parent = d
hb_2.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
hb_2.BackgroundTransparency = 0.750
hb_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
hb_2.Size = UDim2.new(0, 218, 0, 34)
hb_2.Font = Enum.Font.RobotoMono
hb_2.Text = "hold nerd"
hb_2.TextColor3 = Color3.fromRGB(255, 255, 255)
hb_2.TextSize = 14.000

c.Name = "c"
c.Parent = d
c.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
c.BackgroundTransparency = 1.000
c.Position = UDim2.new(0.0301724132, 0, 0.834285736, 0)
c.Size = UDim2.new(0, 218, 0, 23)

cb.Name = "cb"
cb.Parent = c
cb.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
cb.BackgroundTransparency = 0.750
cb.BorderColor3 = Color3.fromRGB(0, 0, 0)
cb.Size = UDim2.new(0, 23, 0, 23)
cb.Font = Enum.Font.RobotoMono
cb.Text = "x"
cb.TextColor3 = Color3.fromRGB(255, 255, 255)
cb.TextSize = 14.000

l2.Name = "l2"
l2.Parent = c
l2.FillDirection = Enum.FillDirection.Horizontal
l2.SortOrder = Enum.SortOrder.LayoutOrder
l2.Padding = UDim.new(0, 4)

local function weld(part0, part1, att1)
    local att0 = Instance.new("Attachment", part0)
    if part0 == nerd.Handle then
        att0.Position = Vector3.new(0, 0, 0)
        att0.Rotation = Vector3.new(0, 0, 0)
    end
    local AP = Instance.new("AlignPosition", part0)
    AP.Attachment0 = att0
    AP.Attachment1 = att1
    AP.ApplyAtCenterOfMass = false
    AP.RigidityEnabled = false
    AP.ReactionForceEnabled = false
    AP.MaxForce = 64060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AP.MaxVelocity = math.huge / 9e110
    AP.Responsiveness = math.huge * math.huge * math.huge * math.huge
    local AO = Instance.new("AlignOrientation", part0)
    AO.Attachment0 = att0
    AO.Attachment1 = att1
    AO.RigidityEnabled = false
    AO.ReactionTorqueEnabled = false
    AO.PrimaryAxisOnly = false
    AO.MaxTorque = 42060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AO.MaxAngularVelocity = math.huge / 9e110
    AO.Responsiveness = math.huge * math.huge * math.huge * math.huge
end

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

dragify(d)

--// buttons
cb.MouseButton1Click:Connect(function()
    ngui:Destroy()
end)

hb.MouseButton1Click:Connect(function()
    local person = game.Players:FindFirstChild(p.Text).Character
    
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, person["Head"], person["Head"].HatAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 0.5, 0)
end)

hb_2.MouseButton1Click:Connect(function()
    renerd()
    clearwelds()
    wait()
    weld(game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle, players.LocalPlayer.Character["Left Arm"], players.LocalPlayer.Character["Left Arm"].LeftGripAttachment)
    wait()
    game:GetService("Players").LocalPlayer.Character:FindFirstChild(hat).Handle.Attachment.Position = Vector3.new(0, 0.5, 0)
end)

warn([[

🤓 N E R D 🤓
 
🤓 running on ver ]]..VER..[[ 🤓
🤓 by spec 🤓
]])
