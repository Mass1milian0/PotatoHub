local AssetsLoaded = false
repeat wait() until _G.Loaded == true
if not pcall(function()
local ScreenGui = game:GetService("CoreGui").RePotatoHub
local Scripts = {
BCreator = ScreenGui.ButtonCreator,
BHandler = ScreenGui.ButtonHandler,
MS = ScreenGui.Mainscript,
MM = ScreenGui.MainModule
}
if game:GetService("Chat"):FindFirstChild("ChatFixer") then
end
local MainFrame = ScreenGui.MainFrame
AssetsLoaded = true
end) then
AssetsLoaded = false
end

if AssetsLoaded then
 
 -- Objects

local TeleportToPlayer = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local PlayerName = Instance.new("TextBox")
local Execute = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

TeleportToPlayer.Name = "TeleportToPlayer"
TeleportToPlayer.Parent = game.CoreGui

Frame.Parent = TeleportToPlayer
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Frame.Position = UDim2.new(0.0154397488, 0, 0.65007323, 0)
Frame.Size = UDim2.new(0, 193, 0, 113)
Frame.Style = Enum.FrameStyle.DropShadow
Frame.Draggable = true

PlayerName.Name = "PlayerName"
PlayerName.Parent = Frame
PlayerName.BackgroundColor3 = Color3.new(0.298039, 0.301961, 0.313726)
PlayerName.BackgroundTransparency = 0.20000000298023
PlayerName.Position = UDim2.new(0, -2, 0, 27)
PlayerName.Size = UDim2.new(0, 180, 0, 40)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.Text = "Player Name"
PlayerName.TextColor3 = Color3.new(1, 1, 1)
PlayerName.TextScaled = true
PlayerName.TextSize = 10
PlayerName.TextWrapped = true

Execute.Name = "Execute"
Execute.Parent = Frame
Execute.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Execute.BackgroundTransparency = 0.60000000298023
Execute.Position = UDim2.new(0, -2, 0, 69)
Execute.Size = UDim2.new(0, 180, 0, 32)
Execute.Font = Enum.Font.SourceSans
Execute.Text = "Teleport"
Execute.TextScaled = true
Execute.TextColor3 = Color3.new(1, 1, 1)
Execute.TextSize = 14
Execute.TextWrapped = true
Execute.MouseButton1Click:connect(function()
local Target
local character
local Player
Player = game.Players.LocalPlayer
character = workspace:WaitForChild(Player.name)
Target = PlayerName.Text
Player.character.HumanoidRootPart.CFrame = game.Players[Target].character.HumanoidRootPart.CFrame
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.60000002384186
TextLabel.Position = UDim2.new(0, -2, 0, -2)
TextLabel.Size = UDim2.new(0, 180, 0, 25)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "TP by Sexy Potato"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

-- Scripts
end