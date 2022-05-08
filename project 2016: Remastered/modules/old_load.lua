if not game:IsLoaded() then
    --// funni loading screen by spec
    --[[
    // not gonna use getasset anymore cause its slow
    
        local getasset = getsynasset or getcustomasset
        makefolder("loadingimages")
        writefile("loadingimages/bg.png", game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/project%202016%3A%20Remastered/images/darkLoadingTexture.png"))
        writefile("loadingimages/bluespin.png", game:HttpGet("https://raw.githubusercontent.com/specowos/lua-projects/main/project%202016%3A%20Remastered/images/loadingCircle.png"))

    ]]

    --// destroy loading gui before anything else    
    local LoadingGui = game:WaitForChild("CoreGui"):WaitForChild("RobloxLoadingGui")
    LoadingGui.Enabled = false
    LoadingGui:Destroy()


    local spin = true

    --// make
    local funniload = Instance.new("ScreenGui")
    local bg = Instance.new("ImageLabel")
    local logo = Instance.new("ImageLabel")

    local load_text = Instance.new("TextLabel")

    local game_loadtext = Instance.new("TextLabel")
    local owner_loadtext = Instance.new("TextLabel")

    --// define
    funniload.Name = "funniload"
    funniload.Parent = game:WaitForChild("CoreGui")

    bg.Name = "bg"
    bg.Parent = funniload
    bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bg.BorderSizePixel = 0
    bg.Position = UDim2.new(0, -50, 0, -50)
    bg.Size = UDim2.new(1, 100, 1, 100)
    bg.ZIndex = 0
    bg.Image = "rbxasset://textures/loading/darkLoadingTexture.png"
    --[[ saving for when roblox deletes that
        bg.Image = getasset("loadingimages/bg.png")
    ]]
    --// tile effect
    bg.ScaleType = Enum.ScaleType.Tile
    bg.TileSize = UDim2.new(0, 512, 0, 512)

    logo.Name = "logo"
    logo.Parent = bg
    logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    logo.BackgroundTransparency = 1.000
    logo.Position = UDim2.new(0.861751139, 0, 0.787970304, 0)
    logo.Size = UDim2.new(0, 128, 0, 128)
    logo.ZIndex = 1
    logo.Image = "rbxasset://textures/loading/loadingCircle.png"
    --[[ saving for when roblox deletes that
        logo.Image = getasset("loadingimages/bluespin.png")
    ]]
    --// rotate effect
    spawn(function()
        while spin do
            wait()
            logo.Rotation = logo.Rotation + 7
        end
    end)

    load_text.Name = "load_text"
    load_text.Parent = bg
    load_text.BackgroundTransparency = 1
    load_text.Text = "Loading..."
    load_text.TextSize = 20
    load_text.TextColor3 = Color3.fromRGB(255, 255, 255)
    load_text.Font = Enum.Font.SourceSans
    load_text.TextXAlignment = Enum.TextXAlignment.Center
    load_text.Position = UDim2.new(0.876301765, 0, 0.834405065, 0)
    load_text.Size = UDim2.new(0, 60, 0, 26)

    game_loadtext.Name = "load_text"
    game_loadtext.Parent = bg
    game_loadtext.BackgroundTransparency = 1
    game_loadtext.Text = "Requesting game name..."
    game_loadtext.TextSize = 36
    game_loadtext.TextColor3 = Color3.fromRGB(255, 255, 255)
    game_loadtext.Font = Enum.Font.SourceSans
    game_loadtext.TextXAlignment = Enum.TextXAlignment.Left
    game_loadtext.Position = UDim2.new(0.07, 0, 0.787, 0)
    game_loadtext.Size = UDim2.new(0, 60, 0, 26)

    owner_loadtext.Name = "load_text"
    owner_loadtext.Parent = bg
    owner_loadtext.BackgroundTransparency = 1
    owner_loadtext.Text = "Requesting username..."
    owner_loadtext.TextSize = 28
    owner_loadtext.TextColor3 = Color3.fromRGB(255, 255, 255)
    owner_loadtext.Font = Enum.Font.SourceSans
    owner_loadtext.TextXAlignment = Enum.TextXAlignment.Left
    owner_loadtext.Position = UDim2.new(0.07, 0, 0.826, 0)
    owner_loadtext.Size = UDim2.new(0, 90, 0, 39)

    spawn(function()
        --// game text
        game_loadtext.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
        --// owner text
        owner_loadtext.Text = "By "..game.Players:GetNameFromUserIdAsync(game.CreatorId)
    end)

    --// scrip
    spawn(function()
        while wait(1) do
            load_text.Text = "Loading."
            wait(1)
            load_text.Text = "Loading.."
            wait(1)
            load_text.Text = "Loading..."
            wait(1)
            load_text.Text = "Loading"
        end
    end)

    local spin = false

    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    funniload:Destroy()
end
