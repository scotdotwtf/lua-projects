-- built on a feedback gui LMAO

local FeedbackGui = Instance.new("ScreenGui")
local Button = Instance.new("TextButton")
local FeedbackMain = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local SendButton = Instance.new("TextButton")
local CharactersLeft = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Input = Instance.new("TextBox")
local InputBox = Instance.new("TextButton")

FeedbackGui.Name = "FeedEx"
FeedbackGui.Parent = game:GetService("CoreGui")

Button.Name = "Button"
Button.Parent = FeedbackGui
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.Position = UDim2.new(0.0416666567, -80, 1.05509579, -80)
Button.Size = UDim2.new(0, 100, 0, 20)
Button.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Button.Font = Enum.Font.SourceSansBold
Button.Text = "open"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 12.000
Button.TextStrokeTransparency = 0.800

FeedbackMain.Name = "FeedbackMain"
FeedbackMain.Parent = FeedbackGui
FeedbackMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FeedbackMain.Position = UDim2.new(0, 10, 0.5, -110)
FeedbackMain.Size = UDim2.new(0, 300, 0, 220)
FeedbackMain.Style = Enum.FrameStyle.DropShadow
FeedbackMain.Visible = false

Title.Name = "Title"
Title.Parent = FeedbackMain
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Execute a lua script"
Title.TextColor3 = Color3.fromRGB(250, 250, 250)
Title.TextSize = 24.000

SendButton.Name = "SendButton"
SendButton.Parent = FeedbackMain
SendButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SendButton.Position = UDim2.new(1, -105, 0, 160)
SendButton.Size = UDim2.new(0, 100, 0, 40)
SendButton.ZIndex = 2
SendButton.AutoButtonColor = false
SendButton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
SendButton.Font = Enum.Font.SourceSansBold
SendButton.Text = "execute"
SendButton.TextColor3 = Color3.fromRGB(250, 250, 250)
SendButton.TextSize = 28.000
SendButton.TextStrokeTransparency = 0.800

CharactersLeft.Name = "CharactersLeft"
CharactersLeft.Parent = FeedbackMain
CharactersLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CharactersLeft.BackgroundTransparency = 1.000
CharactersLeft.Position = UDim2.new(0, 10, 0, 160)
CharactersLeft.Size = UDim2.new(0, 32, 0, 20)
CharactersLeft.Font = Enum.Font.SourceSansBold
CharactersLeft.Text = "0"
CharactersLeft.TextColor3 = Color3.fromRGB(255, 255, 255)
CharactersLeft.TextSize = 18.000
CharactersLeft.TextWrapped = true
CharactersLeft.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame.Parent = FeedbackMain
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 13, 0, 38)
ScrollingFrame.Size = UDim2.new(0.946666658, -10, 0, 115)
ScrollingFrame.ZIndex = 2
ScrollingFrame.BottomImage = "rbxassetid://6689842712"
ScrollingFrame.CanvasSize = UDim2.new(2.79999995, 0, 10, 0)
ScrollingFrame.MidImage = "rbxassetid://6689849479"
ScrollingFrame.ScrollBarThickness = 16
ScrollingFrame.TopImage = "rbxassetid://6689841773"
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(90, 142, 233)

Input.Name = "Input"
Input.Parent = ScrollingFrame
Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Input.BackgroundTransparency = 1.000
Input.Position = UDim2.new(0, 7, 0, 7)
Input.Size = UDim2.new(0.95216012, 0, 1, 0)
Input.ZIndex = 3
Input.ClearTextOnFocus = false
Input.Font = Enum.Font.SourceSansBold
Input.MultiLine = true
Input.PlaceholderText = "Enter  quick lua script to execute"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(60, 60, 60)
Input.TextSize = 18.000
Input.TextWrapped = true
Input.TextXAlignment = Enum.TextXAlignment.Left
Input.TextYAlignment = Enum.TextYAlignment.Top

InputBox.Name = "InputBox"
InputBox.Parent = FeedbackMain
InputBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputBox.Position = UDim2.new(0, 5, 0, 30)
InputBox.Size = UDim2.new(1, -10, 0, 130)
InputBox.AutoButtonColor = false
InputBox.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
InputBox.Font = Enum.Font.SourceSans
InputBox.Text = ""
InputBox.TextSize = 14.000

-- scriptolla

FeedbackMain.CharactersLeft.Text = #Input.Text
Input.Changed:Connect(function()
	FeedbackMain.CharactersLeft.Text = #Input.Text
end)

SendButton.Activated:Connect(function()
	local Source, Error = pcall(function()
		loadstring(Input.Text)()
	end)

	if not Source then
		warn(Error)
	end
end)

Button.MouseButton1Click:Connect(function()
	if FeedbackMain.Visible == true then
		FeedbackMain.Visible = false
		Button.Text = "open"
	elseif FeedbackMain.Visible == false then
		FeedbackMain.Visible = true
		Button.Text = "close"
	end
end)