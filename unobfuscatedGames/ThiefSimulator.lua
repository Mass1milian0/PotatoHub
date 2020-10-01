local AssetsLoaded = falserepeat wait() until _G.Loaded == trueif not pcall(function()local ScreenGui = game:GetService("CoreGui").RePotatoHublocal Scripts = {BCreator = ScreenGui.ButtonCreator,BHandler = ScreenGui.ButtonHandler,MS = ScreenGui.Mainscript,MM = ScreenGui.MainModule}if game:GetService("Chat"):FindFirstChild("ChatFixer") thenendlocal MainFrame = ScreenGui.MainFrameAssetsLoaded = trueend) thenAssetsLoaded = falseendif AssetsLoaded thenlocal A_1 = "XBoostPack"
local A_2 = -100000000
local A_3 = "Backpack"
local Event = game:GetService("ReplicatedStorage").Purchase
Event:FireServer(A_1, A_2, A_3)end