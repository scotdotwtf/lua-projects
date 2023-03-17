_G.TopBackgroundColor = Color3.fromRGB(73, 152, 255) --// defualt is (73, 152, 255)
_G.MainBackgroundColor = Color3.fromRGB(37, 121, 223) --// defualt is (37, 121, 223)
_G.AllTextColor = Color3.fromRGB (255, 255, 255) --// defialt is (255, 255, 255)

local lib = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/scotdotwtf/lua-projects/main/small%20projects/phonx%20mobile%20ui%20lib/phonx_src.lua"))()

--// examples
local start = lib:start("ok") --// this makes the ui so u kinda need this

local button1 = lib:newbutton("button", function() --// this is a button
    print("this button has been clicked")
end)
