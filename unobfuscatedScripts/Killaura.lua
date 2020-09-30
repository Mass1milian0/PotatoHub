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

local personPlayerCharacter = game.Players.LocalPlayer
instatime = 0.1

    while wait() do
            for index, valKill in next, workspace:GetDescendants() do
                if (valKill:FindFirstChildOfClass("Humanoid") and valKill ~= personPlayerCharacter.Character and valKill.Name ~= "Shuriken Thrower") then
                    valKill.Humanoid.Health = math.huge
                wait(instatime)
                    valKill.Humanoid.Health = -math.huge
                end
            end
        end
end