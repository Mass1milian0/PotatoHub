local AssetsLoaded = falserepeat wait() until _G.Loaded == trueif not pcall(function()local ScreenGui = game:GetService("CoreGui").RePotatoHublocal Scripts = {BCreator = ScreenGui.ButtonCreator,BHandler = ScreenGui.ButtonHandler,MS = ScreenGui.Mainscript,MM = ScreenGui.MainModule}if game:GetService("Chat"):FindFirstChild("ChatFixer") thenendlocal MainFrame = ScreenGui.MainFrameAssetsLoaded = trueend) thenAssetsLoaded = falseendif AssetsLoaded then_G.WaitTime = 3
_G.Level = 0 ---Place your level here
_G.Mode = "Solo" ----You can place solo or public here
_G.AutoUpgrade = true ---Make it true or false
_G.AutoChest = true ---Make it true or false
_G.AutoMedKit = true ---Make it true or false
_G.AutoSell = false---Make it true or false
_G.Security = true -- will prevent mods and admins from join your dungeon and ban you (will kick you if they try)

loadstring(game:HttpGet("https://pastebin.com/raw/0SpLZwjv"))()()end