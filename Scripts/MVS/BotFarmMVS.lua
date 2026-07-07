local player = game.Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ScreenGui"
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = player.PlayerGui

local manMen = Instance.new("Frame")
manMen.Name = "ManMen"
manMen.Size = UDim2.new(0, 328, 0, 218)
manMen.Position = UDim2.new(0.31837, 0, 0.24479, 0)
manMen.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
manMen.BackgroundTransparency = 0.8
manMen.BorderSizePixel = 0
manMen.BorderColor3 = Color3.fromRGB(0, 0, 0)
manMen.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 9)
mainCorner.Parent = manMen

local okak = Instance.new("Frame")
okak.Name = "okak"
okak.Size = UDim2.new(0, 103, 0, 25)
okak.Position = UDim2.new(0.02106, 0, 0.02041, 0)
okak.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
okak.BackgroundTransparency = 0.8
okak.BorderSizePixel = 0
okak.BorderColor3 = Color3.fromRGB(0, 0, 0)
okak.Parent = manMen

local okakCorner = Instance.new("UICorner")
okakCorner.Parent = okak

local label1 = Instance.new("TextLabel")
label1.Size = UDim2.new(0, 115, 0, 37)
label1.Position = UDim2.new(-0.06706, 0, -0.24, 0)
label1.BackgroundTransparency = 1
label1.Text = "BotFARM MVS"
label1.TextColor3 = Color3.fromRGB(255, 255, 255)
label1.TextSize = 20
label1.TextWrapped = true
label1.TextStrokeTransparency = 0
label1.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
label1.BorderSizePixel = 0
label1.BorderColor3 = Color3.fromRGB(0, 0, 0)
label1.Parent = okak

local label2 = Instance.new("TextLabel")
label2.Size = UDim2.new(0, 247, 0, 14)
label2.Position = UDim2.new(0.65017, 0, 7.97914, 0)
label2.BackgroundTransparency = 1
label2.Text = "github: woqqen"
label2.TextColor3 = Color3.fromRGB(255, 255, 255)
label2.TextTransparency = 0.77
label2.TextSize = 14
label2.TextXAlignment = Enum.TextXAlignment.Right
label2.TextYAlignment = Enum.TextYAlignment.Bottom
label2.TextWrapped = true
label2.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
label2.BorderSizePixel = 0
label2.BorderColor3 = Color3.fromRGB(0, 0, 0)
label2.Parent = okak

local innerFrame = Instance.new("Frame")
innerFrame.Name = "1"
innerFrame.Size = UDim2.new(0, 314, 0, 168)
innerFrame.Position = UDim2.new(0.02106, 0, 0.19036, 0)
innerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
innerFrame.BackgroundTransparency = 0.85
innerFrame.BorderSizePixel = 0
innerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
innerFrame.Parent = manMen

local innerCorner = Instance.new("UICorner")
innerCorner.Parent = innerFrame

local menuLabel = Instance.new("TextLabel")
menuLabel.Size = UDim2.new(0, 140, 0, 25)
menuLabel.Position = UDim2.new(0.27284, 0, 0, 0)
menuLabel.BackgroundTransparency = 1
menuLabel.Text = "MENU"
menuLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
menuLabel.TextSize = 14
menuLabel.TextScaled = true
menuLabel.TextWrapped = true
menuLabel.TextStrokeTransparency = 0
menuLabel.RichText = true
menuLabel.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
menuLabel.BorderSizePixel = 0
menuLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
menuLabel.Parent = innerFrame

local button = Instance.new("TextButton")
button.Name = "TextButton"
button.Size = UDim2.new(0, 299, 0, 58)
button.Position = UDim2.new(0.02411, 0, 0.60094, 0)
button.BackgroundColor3 = Color3.fromRGB(48, 255, 0)
button.TextColor3 = Color3.fromRGB(0, 0, 0)
button.Text = "Start"
button.TextSize = 14
button.TextScaled = true
button.TextWrapped = true
button.FontFace = Font.new("rbxasset://fonts/families/HighwayGothic.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
button.BorderSizePixel = 0
button.BorderColor3 = Color3.fromRGB(0, 0, 0)
button.Parent = innerFrame

local buttonCorner = Instance.new("UICorner")
buttonCorner.Parent = button

local textBox = Instance.new("TextBox")
textBox.Name = "TargetTextBox"
textBox.Size = UDim2.new(0, 286, 0, 57)
textBox.Position = UDim2.new(0.04004, 0, 0.19357, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.BackgroundTransparency = 0.5
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.TextTransparency = 0.41
textBox.TextSize = 14
textBox.TextScaled = true
textBox.TextWrapped = true
textBox.RichText = true
textBox.CursorPosition = -1
textBox.FontFace = Font.new("rbxasset://fonts/families/DenkOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
textBox.BorderSizePixel = 0
textBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
textBox.Parent = innerFrame

local textBoxCorner = Instance.new("UICorner")
textBoxCorner.Parent = textBox

local function setupMenuController()
	local UserInputService = game:GetService("UserInputService")
	local menu = manMen
	local header = okak
	local isMenuOpen = true
	local isDragging = false
	local dragStartPos, menuStartPos

	UserInputService.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.KeyCode == Enum.KeyCode.Insert then
			isMenuOpen = not isMenuOpen
			menu.Visible = isMenuOpen
		end
	end)

	if header then
		header.Active = true
		header.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				isDragging = true
				dragStartPos = UserInputService:GetMouseLocation()
				menuStartPos = menu.Position
			end
		end)
		header.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				isDragging = false
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local currentPos = UserInputService:GetMouseLocation()
				local delta = currentPos - dragStartPos
				local newX = menuStartPos.X.Scale + delta.X / menu.Parent.AbsoluteSize.X
				local newY = menuStartPos.Y.Scale + delta.Y / menu.Parent.AbsoluteSize.Y
				menu.Position = UDim2.new(newX, 0, newY, 0)
			end
		end)
	end
end

local function setupButton()
	local runService = game:GetService("RunService")
	local OFFSET_FORWARD = 3
	local SIDE = "right"
	local isActive = false
	local heartbeatConnection = nil

	local function getMyRoot()
		local char = player.Character
		return char and char:FindFirstChild("HumanoidRootPart")
	end

	local function getTargetRoot(targetName)
		local target = game.Players:FindFirstChild(targetName)
		if not target or not target.Character then return nil end
		return target.Character:FindFirstChild("HumanoidRootPart")
	end

	local function attach()
		local myRoot = getMyRoot()
		if not myRoot then return end
		local targetName = textBox.Text
		if targetName == "" then return end
		local targetRoot = getTargetRoot(targetName)
		if not targetRoot then return end

		local targetCFrame = targetRoot.CFrame
		local forward = targetCFrame.LookVector
		local right = targetCFrame.RightVector
		local position = targetCFrame.Position + forward * OFFSET_FORWARD
		local lookDir = (SIDE == "right") and right or -right
		local lookAt = position + lookDir
		myRoot.CFrame = CFrame.lookAt(position, lookAt)
	end

	local function updateButton()
		if isActive then
			button.Text = "Stop"
			button.BackgroundColor3 = Color3.new(1, 0, 0)
		else
			button.Text = "Start"
			button.BackgroundColor3 = Color3.fromRGB(48, 255, 0)
		end
	end

	button.MouseButton1Click:Connect(function()
		isActive = not isActive
		if isActive then
			if not heartbeatConnection then
				heartbeatConnection = runService.Heartbeat:Connect(attach)
			end
		else
			if heartbeatConnection then
				heartbeatConnection:Disconnect()
				heartbeatConnection = nil
			end
		end
		updateButton()
	end)

	updateButton()
end

setupMenuController()
setupButton()
