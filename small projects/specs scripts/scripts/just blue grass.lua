--// same preset as in epic 2016 specs preset just no 2016

if not game:IsLoaded() then
	game.Loaded:Wait()
end
wait()

--// instances
local cc = Instance.new("ColorCorrectionEffect")
local lighting = game:GetService("Lighting")
local sbox = Instance.new("Sky")

--// coool
sbox.Parent = lighting
sbox.SkyboxBk = "http://www.roblox.com/asset/?id=271042516"
sbox.SkyboxDn = "http://www.roblox.com/asset/?id=271077243"
sbox.SkyboxFt = "http://www.roblox.com/asset/?id=271042556"
sbox.SkyboxLf = "http://www.roblox.com/asset/?id=271042310"
sbox.SkyboxRt = "http://www.roblox.com/asset/?id=271042467"
sbox.SkyboxUp = "http://www.roblox.com/asset/?id=271077958"

lighting.Ambient = Color3.fromRGB(140, 0, 255)
lighting.FogColor = Color3.fromRGB(140, 0, 255)
lighting.ClockTime = 3
lighting.FogEnd = 2000

for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
    if v:IsA("BasePart") and v.Material == Enum.Material.Grass then
        v.Transparency = 0.25
        v.Color = Color3.fromRGB(125, 125, 200)
    end
end

