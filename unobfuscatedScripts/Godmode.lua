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
local player=game.Players.LocalPlayer.Character
player.Humanoid:Remove()
Instance.new('Humanoid',player)
end