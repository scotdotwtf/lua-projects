if game.PlaceId == 5100950559 or game.PlaceId == 6048573718 or game.PlaceId == 6446409152 then
    --// make
    local silent = Instance.new("ScreenGui")
    local silentre = Instance.new("TextButton")
    local padding = Instance.new("UIPadding")
    local checkbox = Instance.new("ImageLabel")
    
    --// define
    silent.Name = "silent"
    silent.Parent = game:GetService("CoreGui")
    
    silentre.Name = "silentre"
    silentre.Parent = silent
    silentre.BackgroundColor3 = Color3.fromRGB(250, 250, 250)
    silentre.BackgroundTransparency = 1
    silentre.Position = UDim2.new(0, 0, 1, -52)
    silentre.Size = UDim2.new(0, 129, 0, 26)
    silentre.Font = Enum.Font.GothamBlack
    silentre.Text = "Silent -re"
    silentre.TextColor3 = Color3.fromRGB(255, 255, 255)
    silentre.TextSize = 21.000
    silentre.TextXAlignment = Enum.TextXAlignment.Left
    
    padding.Name = "padding"
    padding.Parent = silentre
    padding.PaddingLeft = UDim.new(0.01, 11)
    
    checkbox.Name = "checkbox"
    checkbox.Parent = silentre
    checkbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.BackgroundTransparency = 1.000
    checkbox.Position = UDim2.new(1, -25, 0, 1)
    checkbox.Size = UDim2.new(0, 25, 0, 25)
    checkbox.Image = "rbxassetid://6031068420"
    
    --// script
    silentre.MouseButton1Click:Connect(function()
        game:GetService("Players"):Chat("-re")
        spawn(function()
            checkbox.Image = "rbxassetid://6031068421"
            wait(0.5)
            checkbox.Image = "rbxassetid://6031068420"
        end)
    end)
else
    print("game not supported!")
end
