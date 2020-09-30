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

plr = game.Players.LocalPlayer
mouse = plr:GetMouse()

key = "q"

toggled = false

lastspeed = nil

speed = 65

mouse.KeyDown:connect(function(k)
k = k:lower()

if k == key then

       if toggled == false then
           toggled = true
           lastspeed = plr.Character.Humanoid.WalkSpeed

           plr.Character.Humanoid.WalkSpeed = speed

          else

       toggled = false

       plr.Character.Humanoid.WalkSpeed = lastspeed

       end

end

end)
end