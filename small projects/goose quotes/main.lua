--// Locals
local quotes = {"am goose hjonk", "good work", "🦆", "nsfd asdas sorry hard to type withh feet", "i cause problems on purpose", "peace was never an option", "am goose", "honk honk", "peace truly was never an option", "i steel u food", "i eat ur crops"} 
local players = game:GetService('Players')
local prefix = ";"
local prefixv = "goose"
local ver = "1.0.1"

local function sayquote()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(quotes[math.random(#quotes)].." -the goose [goose qoutes v"..ver.."]", "All")
end

--// Script
spawn(function()
    players.PlayerChatted:Connect(function(PlayerChatType, sender, message, recipient)
        if message == prefix..prefixv then
            sayquote() 
        end
    end)
end)

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("goose quote [by spec] loaded! 🦆🦆 say "..prefix..prefixv.." for a goose quote! 🦆🦆 [gquote "..ver.."]", "All")

spawn(function()
    while wait(120) do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("🦆🦆 just a reminder to say "..prefix..prefixv.." for a goose quote! 🦆🦆 [gquote "..ver.."]", "All")
    end
end)
