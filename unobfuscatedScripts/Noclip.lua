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
game.Players.LocalPlayer.DevCameraOcclusionMode = 'Invisicam' --INVISCAM!!!
local mouse = game.Players.LocalPlayer:GetMouse() 
local torso = game.Players.LocalPlayer.Character.Torso 
local dir = {w = 0, s = 0, a = 0, d = 0} 
local spd = 2 mouse.KeyDown:connect(function(key) 
if key:lower() == "w" then dir.w = 1 
elseif key:lower() == "s" then dir.s = 1
elseif key:lower() == "a" then dir.a = 1 
elseif key:lower() == "d" then dir.d = 1 
elseif key:lower() == "q" then spd = spd + 1 
elseif key:lower() == "e" then spd = spd - 1 
end end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
dir.w = 0 
elseif key:lower() == "s" then dir.s = 0 
elseif key:lower() == "a" then dir.a = 0 
elseif key:lower() == "d" then dir.d = 0 
end end)


enabled = false
mouse.keyDown:connect(function(key)
if (key) == "m" and enabled == false then
enabled = true
repeat wait(1/44)
game.Players.LocalPlayer.Character.Torso.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd)
until enabled == false
elseif enabled == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
if (key) == "m" and enabled == true then
enabled = false
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false


end

end)
end