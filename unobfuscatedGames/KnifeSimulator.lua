local AssetsLoaded = falserepeat wait() until _G.Loaded == trueif not pcall(function()local ScreenGui = game:GetService("CoreGui").RePotatoHublocal Scripts = {BCreator = ScreenGui.ButtonCreator,BHandler = ScreenGui.ButtonHandler,MS = ScreenGui.Mainscript,MM = ScreenGui.MainModule}if game:GetService("Chat"):FindFirstChild("ChatFixer") thenendlocal MainFrame = ScreenGui.MainFrameAssetsLoaded = trueend) thenAssetsLoaded = falseendif AssetsLoaded then-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ksautofarm = Instance.new("ScreenGui")
local main_frame = Instance.new("Frame")
local title_text = Instance.new("TextLabel")
local enable_button = Instance.new("TextButton")
local discord_text = Instance.new("TextLabel")
local close_button = Instance.new("TextButton")
--Properties:
ksautofarm.Name = "ksautofarm"
ksautofarm.Parent = game.CoreGui
ksautofarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ksautofarm.Draggable = true

main_frame.Name = "main_frame"
main_frame.Parent = ksautofarm
main_frame.BackgroundColor3 = Color3.new(1, 1, 1)
main_frame.Position = UDim2.new(0.219626173, 0, 0.439803451, 0)
main_frame.Size = UDim2.new(0, 210, 0, 139)
main_frame.Style = Enum.FrameStyle.DropShadow

title_text.Name = "title_text"
title_text.Parent = main_frame
title_text.BackgroundColor3 = Color3.new(0, 0, 0)
title_text.BackgroundTransparency = 0.34999999403954
title_text.BorderSizePixel = 0
title_text.Position = UDim2.new(-0.0142857144, 0, -0.0118343197, 0)
title_text.Size = UDim2.new(0, 200, 0, 49)
title_text.Font = Enum.Font.SourceSans
title_text.Text = "Knife Simulator AutoFarm"
title_text.TextColor3 = Color3.new(1, 1, 1)
title_text.TextSize = 14

enable_button.Name = "enable_button"
enable_button.Parent = main_frame
enable_button.BackgroundColor3 = Color3.new(1, 1, 1)
enable_button.Position = UDim2.new(0.233333334, 0, 0.453237414, 0)
enable_button.Size = UDim2.new(0, 100, 0, 40)
enable_button.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
enable_button.Font = Enum.Font.SourceSansBold
enable_button.Text = "Enable"
enable_button.TextColor3 = Color3.new(0, 0, 0)
enable_button.TextSize = 20
enable_button.MouseButton1Down:connect(function()
loadstring(game:HttpGet(('https://pastebin.com/raw/mSd12Kem'),true))()
end)

discord_text.Name = "discord_text"
discord_text.Parent = main_frame
discord_text.BackgroundColor3 = Color3.new(1, 1, 1)
discord_text.BackgroundTransparency = 1
discord_text.Position = UDim2.new(-0.00476190494, 0, 0.705035985, 0)
discord_text.Size = UDim2.new(0, 200, 0, 50)
discord_text.Font = Enum.Font.SourceSans
discord_text.Text = "By !! - Sexy potato#2510"
discord_text.TextColor3 = Color3.new(0, 0, 0)
discord_text.TextSize = 14

close_button.Name = "close_button"
close_button.Parent = main_frame
close_button.BackgroundColor3 = Color3.new(1, 1, 1)
close_button.BackgroundTransparency = 1
close_button.Position = UDim2.new(0.847619057, 0, -0.0177514795, 0)
close_button.Size = UDim2.new(0, 33, 0, 19)
close_button.Font = Enum.Font.SourceSans
close_button.Text = "x"
close_button.TextColor3 = Color3.new(1, 1, 1)
close_button.TextSize = 14
close_button.MouseButton1Down:connect(function()
main_frame.Visible = false
end)
-- Scripts:end