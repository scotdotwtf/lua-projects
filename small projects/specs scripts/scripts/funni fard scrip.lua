--// Credits to cola, I was gonna make this but cola did it faster so im using his ver
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

--fard 6084423470
--scotland 6678671846

fart.BoomBox.RemoteEvent:FireServer(6084423470)
fart.BoomBox.Parent = workspace
