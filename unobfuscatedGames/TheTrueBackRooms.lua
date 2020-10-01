local AssetsLoaded = falserepeat wait() until _G.Loaded == trueif not pcall(function()local ScreenGui = game:GetService("CoreGui").RePotatoHublocal Scripts = {BCreator = ScreenGui.ButtonCreator,BHandler = ScreenGui.ButtonHandler,MS = ScreenGui.Mainscript,MM = ScreenGui.MainModule}if game:GetService("Chat"):FindFirstChild("ChatFixer") thenendlocal MainFrame = ScreenGui.MainFrameAssetsLoaded = trueend) thenAssetsLoaded = falseendif AssetsLoaded thenlocal exit = game.workspace:FindFirstChild("ExitTrigger")
local points = Instance.new("Folder",game.workspace)
local cam = game.workspace.CurrentCamera
points.Name = "Points"
local guiL = Instance.new("SurfaceGui",exit)
local guiR = Instance.new("SurfaceGui",exit)
local guiB = Instance.new("SurfaceGui",exit)
local guiF = Instance.new("SurfaceGui",exit)
local guiBt = Instance.new("SurfaceGui",exit)
local guiT = Instance.new("SurfaceGui",exit)
local L = Instance.new("Frame",guiL)
local R = Instance.new("Frame",guiR)
local B = Instance.new("Frame",guiB)
local F = Instance.new("Frame",guiF)
local Bt = Instance.new("Frame",guiBt)
local T = Instance.new("Frame",guiT)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100

guiL.Face = "Left"
guiR.Face = "Right"
guiB.Face = "Back"
guiF.Face = "Front"
guiBt.Face = "Bottom"
guiT.Face = "Top"

L.Size = UDim2.new(1,0,1,0)
R.Size = UDim2.new(1,0,1,0)
B.Size = UDim2.new(1,0,1,0)
F.Size = UDim2.new(1,0,1,0)
Bt.Size = UDim2.new(1,0,1,0)
T.Size = UDim2.new(1,0,1,0)

guiL.AlwaysOnTop = true
guiR.AlwaysOnTop = true
guiB.AlwaysOnTop = true
guiF.AlwaysOnTop = true
guiBt.AlwaysOnTop = true
guiT.AlwaysOnTop = true

while wait() do
	local plr = game.Players.LocalPlayer
	if plr.Character then
		local path = game:GetService("PathfindingService"):FindPathAsync(plr.Character.HumanoidRootPart.Position,exit.Position)
		local wayPoints = path:GetWaypoints()

		for i,v in pairs(points:GetChildren()) do
			v:Destroy()	
		end

		if path.Status == Enum.PathStatus.NoPath then
			print("I can't find a path ;(")
		end

		if path.Status == Enum.PathStatus.Success then
			print"LoL"
			for i,v in pairs(wayPoints) do
				local point = Instance.new("Part",points)
				point.Anchored = true
				point.CanCollide = false
				point.Position = v.Position
				point.BrickColor = BrickColor.new("Dark green")
				point.Material = Enum.Material.Neon
				point.Transparency = .4
				point.Size = Vector3.new(1,1,1)
				plr.Character.Humanoid:MoveTo(v.Position)
				repeat
					cam.CFrame = cam.CFrame:Lerp(CFrame.new(plr.Character.Head.Position,v.Position+Vector3.new(0,4,0)),.3)
				until plr.Character.Humanoid.MoveToFinished:wait()
			end
		end
	end
endend