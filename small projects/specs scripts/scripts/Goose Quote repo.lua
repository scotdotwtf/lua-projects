--[[// CMDS: 
    >goose *remember this can change if u change prefixv*
    >crazydave
    >duck
    *more soon*
]]

--// Locals
local players = game:GetService('Players')
local quotes = {"am goose hjonk", "good work", "🦆", "nsfd asdas sorry hard to type withh feet", "i cause problems on purpose", "peace was never an option", "am goose", "honk honk", "peace truly was never an option", "i steel u food", "i eat ur crops"} 
local wabbys = {"wabby weebo", "waddo wabby wabbo woaboo wop", "behbapbow bhow", "DraGdVA", "VHAvEVAa", "wabby", "weebo", "beDragFha haBha"}
local prefix = ">"
local prefixv = "goose"
local ver = "1.0.3"

local function csay(tex)
    wait(0.1)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tex, "All")
end

--// Script
spawn(function()
    players.PlayerChatted:Connect(function(PlayerChatType, sender, message, recipient)
        if message == prefix..prefixv then
            csay(quotes[math.random(#quotes)].." -the goose [goose qoutes "..ver.."]") 
        elseif message == prefix.."duck" then
            csay("is u that dumb? HOW DO U NOT KNOW THE DIFFERENCE BETWEEN DUCK AND GOOSE?!")
        elseif message == prefix.."crazydave" then
            csay(wabbys[math.random(#wabbys)])
        end
    end)
end)

csay("goose quote [by spec] loaded! 🦆🦆 say "..prefix..prefixv.." for a goose quote! 🦆🦆 [gquote "..ver.."] *or try to find secret cmds*", "All")

spawn(function()
    while wait(120) do
        csay("🦆🦆 just a reminder to say "..prefix..prefixv.." for a goose quote! 🦆🦆 [gquote "..ver.."]", "All")
    end
end)
