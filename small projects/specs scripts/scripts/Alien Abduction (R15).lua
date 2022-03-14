--// Hat needed: https://www.roblox.com/catalog/8151404994/Hovering-UFO

local me = game:GetService("Players").LocalPlayer.Character.UpperTorso

me.Waist:Destroy()
me.Anchored = true

local chr = game:GetService("Players").LocalPlayer.Character

for i,v in next, chr:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
        game:GetService("RunService").Heartbeat:connect(function()
        v.Velocity = Vector3.new(0, 35, 0)
        end)
    end
end

local custompos = Vector3.new(0, -0.5, 0)
local customrot = Vector3.new(0, 0, 0)

local tool = game:GetService("Players").LocalPlayer.Character["UFO"]
tool.Handle.AccessoryWeld:Destroy()

local function weld(part0, part1, att1)
    local att0 = Instance.new("Attachment", part0)
    if part0 == tool.Handle then
        att0.Position = custompos
        att0.Rotation = customrot
    end
    local AP = Instance.new("AlignPosition", part0)
    AP.Attachment0 = att0
    AP.Attachment1 = att1
    AP.ApplyAtCenterOfMass = false
    AP.RigidityEnabled = false
    AP.ReactionForceEnabled = false
    AP.MaxForce = 64060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AP.MaxVelocity = math.huge / 9e110
    AP.Responsiveness = math.huge / 9e110
    local AO = Instance.new("AlignOrientation", part0)
    AO.Attachment0 = att0
    AO.Attachment1 = att1
    AO.RigidityEnabled = false
    AO.ReactionTorqueEnabled = false
    AO.PrimaryAxisOnly = false
    AO.MaxTorque = 42060 * part0.Size.X * part0.Size.Y * part0.Size.Z * part1.Size.X * part1.Size.Y * part1.Size.Z
    AO.MaxAngularVelocity = math.huge / 9e110
    AO.Responsiveness = math.huge / 9e110
end

weld(tool.Handle, game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"].RootRigAttachment)
