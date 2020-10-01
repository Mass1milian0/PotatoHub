local AssetsLoaded = falserepeat wait() until _G.Loaded == trueif not pcall(function()local ScreenGui = game:GetService("CoreGui").RePotatoHublocal Scripts = {BCreator = ScreenGui.ButtonCreator,BHandler = ScreenGui.ButtonHandler,MS = ScreenGui.Mainscript,MM = ScreenGui.MainModule}if game:GetService("Chat"):FindFirstChild("ChatFixer") thenendlocal MainFrame = ScreenGui.MainFrameAssetsLoaded = trueend) thenAssetsLoaded = falseendif AssetsLoaded thenScreenGui = Instance.new("ScreenGui")
main = Instance.new("Frame")
TextLabel = Instance.new("TextLabel")
on = Instance.new("TextButton")
off = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.new(0.313726, 0.313726, 0.313726)
main.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
main.Position = UDim2.new(0.779569924, 0, 0.705601931, 0)
main.Size = UDim2.new(0, 219, 0, 163)
main.Active = true
main.Draggable = true

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
TextLabel.BorderColor3 = Color3.new(0.243137, 0.243137, 0.243137)
TextLabel.Size = UDim2.new(0, 219, 0, 50)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.FontSize = Enum.FontSize.Size24
TextLabel.Text = "Pick A Side Auto Farm By Hackmaster12"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 24
TextLabel.TextWrapped = true

on.Name = "on"
on.Parent = main
on.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
on.BorderColor3 = Color3.new(0.615686, 0.615686, 0.615686)
on.Position = UDim2.new(0.219178081, 0, 0.361963183, 0)
on.Size = UDim2.new(0, 122, 0, 44)
on.Font = Enum.Font.SourceSansBold
on.FontSize = Enum.FontSize.Size24
on.Text = "On"
on.TextColor3 = Color3.new(1, 1, 1)
on.TextSize = 20
on.TextStrokeTransparency = 0
on.MouseButton1Down:connect(function()
_G.toggled = true
while _G.toggled == true do
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-42.1867104, 4, -10.0159426)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.8459854, 4, -7.64399719)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.0132484, 4, 12.9164495)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.2372742, 10.0727692, 22.5755386)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22.6320515, 15.2083225, -22.8036976)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.5018234, 4, 12.9243202)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.9209137, 4, 23.7264462)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-51.7601433, 9.02024555, 24.8675385)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54, 4, 3)
wait(0.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-45.7298431, 4, 14.7902403)
wait(0.25)
end
end)

off.Name = "off"
off.Parent = main
off.BackgroundColor3 = Color3.new(0.239216, 0.239216, 0.239216)
off.BorderColor3 = Color3.new(0.615686, 0.615686, 0.615686)
off.Position = UDim2.new(0.219178095, 0, 0.674846649, 0)
off.Size = UDim2.new(0, 122, 0, 44)
off.Font = Enum.Font.SourceSansBold
off.FontSize = Enum.FontSize.Size24
off.Text = "Off"
off.TextColor3 = Color3.new(1, 1, 1)
off.TextSize = 20
off.TextStrokeTransparency = 0
off.MouseButton1Down:connect(function()
_G.toggled = false
end)end