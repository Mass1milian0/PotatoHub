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

local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)
end