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

local CustomESP = Instance.new("ScreenGui") --shitty gui made by potato
local topbar = Instance.new("Frame")
local Window = Instance.new("Frame")
local player = Instance.new("TextBox")
local create = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

CustomESP.Name = "Custom ESP"
CustomESP.Parent = game.CoreGui

topbar.Name = "topbar"
topbar.Parent = CustomESP
topbar.Active = true
topbar.BackgroundColor3 = Color3.fromRGB(55,55,55)
topbar.BackgroundTransparency = 0.3
topbar.BorderSizePixel = 5
topbar.BorderColor3 = Color3.fromRGB(33,33,33)
topbar.Draggable = true
topbar.Position = UDim2.new(0.446646333, 0, 0.474074066, 0)
topbar.Size = UDim2.new(0, 140, 0, 35)

Window.Name = "Window"
Window.Parent = topbar
Window.Active = true
Window.BackgroundColor3 = Color3.fromRGB(55,55,55)
Window.BackgroundTransparency = 0.3
Window.BorderSizePixel = 5
Window.BorderColor3 = Color3.fromRGB(33,33,33)
Window.Position = UDim2.new(0, 0, 1, 0)
Window.Size = UDim2.new(0, 140, 0, 105)

player.Name = "player"
player.Parent = Window
player.BackgroundColor3 = Color3.fromRGB(75,75,75)
player.BorderColor3 = Color3.new(0.34902, 0.34902, 0.34902)
player.Position = UDim2.new(0.10357143, 0, 0.219104477, 0)
player.Size = UDim2.new(0, 111, 0, 18)
player.PlaceholderText = "Player Name"
player.Text = ""
player.TextColor3 = Color3.new(1, 1, 1)
player.TextSize = 14

create.Name = "create"
create.Parent = Window
create.BackgroundColor3 = Color3.fromRGB(75,75,75)
create.BorderColor3 = Color3.new(0.137255, 0.12549, 0.219608)
create.Position = UDim2.new(0.107142858, 0, 0.611940324, 0)
create.Size = UDim2.new(0, 111, 0, 18)
create.BorderSizePixel = 0
create.Text = "LOCATE"
create.BackgroundTransparency = 0.4
create.TextColor3 = Color3.new(1, 1, 1)
create.TextSize = 12

TextLabel.Parent = topbar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.0714285672, 0)
TextLabel.Size = UDim2.new(0, 140, 0, 32)
TextLabel.Text = "LOCATER"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 12
TextLabel.TextWrapped = true

-- Scripts 

create.MouseButton1Click:connect(function()
local me = game.Players.LocalPlayer.Name
local line = Instance.new("Beam", workspace)
local mee = Instance.new("Attachment")
local victim = Instance.new("Attachment")
mee.Parent = game.Workspace[me].Head
victim.Parent = game.Workspace[player.Text].Head
line.Attachment0 = mee
line.Attachment1 = victim

local color1 = Color3.new(255, 0, 0)
local color2 = Color3.new(255,0 ,0) 

line.Color = ColorSequence.new(color1, color2)
line.Width0 = 0.1
line.Width1 = 0.1

local bill = Instance.new("BillboardGui", victim)
local name = Instance.new("TextLabel", bill)
bill.AlwaysOnTop = true
bill.Size = UDim2.new(0,200,0,50)
name.Size = UDim2.new(0,200,0,50)
name.BackgroundTransparency = 1
name.Text = player.Text
name.TextColor3 = Color3.new(255,0,0)
name.Font = Enum.Font.SciFi
name.TextStrokeTransparency = 0
name.TextScaled = true


end)
print('Loaded!')
end