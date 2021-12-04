local lib = loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/specowos/lua-projects/main/small%20projects/phonx%20mobile%20ui%20lib/phonx_src.lua"))()

--// examples
local start = lib:start("ok") --// this makes the ui so u kinda need this

local button1 = lib:newbutton("button", function() --// this is a button
    print("this button has been clicked")
end)
