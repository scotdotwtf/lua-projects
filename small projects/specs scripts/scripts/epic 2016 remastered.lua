--// remastered a old script i never released, hope u enjoy :)
--// epic 2016 remastered
if not game:IsLoaded() then
	game.Loaded:Wait()
end
wait()

--// instances
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
cc.Saturation = -0.1
cc.Contrast = -0.1
lighting.GlobalShadows = false
setscriptable(lighting, "Technology", true) lighting.Technology = Enum.Technology.Compatibility
settings().Rendering.QualityLevel = 7

--// load old gui
loadstring(game:HttpGet('https://raw.githubusercontent.com/specowos/lua-projects/main/small%20projects/project%3A2016/2016raw.lua',true))()
