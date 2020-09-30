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

--| Ace [ Old GS Premium ]
--| Written by Avexus#1866

local TweenService = game:GetService("TweenService")
local Insert = table.insert
local V2 = Vector2
local V3 = Vector3
local CF = CFrame
local UD2 = UDim2
local C3 = Color3
local sin = math.sin
local str_match, str_lower = string.match, string.lower
local floor, abs, huge, deg, atan2 = math.floor, math.abs, math.huge, math.deg, math.atan2
local nV = V3.new()

Aim = {
	Key = Enum.UserInputType.MouseButton2,
	MouseBased = true,
	AimPart = "Head",
	SuppressShotsWhenNotLockedOn = true,
	AimLock = true,
	TargetMode = "Fov",
	TargetDebounce = 0,
	Toggle = false,
	VelocityCompensation = 0.8,
	DropCompensation = 0.9,
	X_Sensitivity = 0.3,
	Y_Sensitivity = 0.3,
	Wallbang = true,
	Toggled = false,
	FovPx = 300,
	-- Internal, do not touch
	KeyHeld = false,
	AimingIn = false
}

Wallbang = {
	Enabled = true,
	MaxWalls = 5,
	MaxStuds = 2.8,
	MaxDist = 500,
}

Esp = {
	ShowVisibleOnly = false,
}

TriggerBot = {
	Enabled = false,
	MustBeScopedIn = false,
	-- 1/4.5 is average human reaction time.
	Delay = 0.5,
	MaxPxOffset = 2
}

Chams = {
	Enabled = true,
	ShowVisibleOnly = false,
	Transparency = 1/3,
	WallbangColor = C3.new(1,1,0),
	VisibleColor = C3.new(0,1,0),
	HiddenColor = C3.new(1,0,0)
}

Box = {
	Enabled = true,
	Thickness = 1,
	MaxDistance = 500,
	FadeWithMaxDistance = false,
	ShowVisibleOnly = false,
	WallbangColor = C3.new(1,1,0),
	VisibleColor = C3.new(0,1,0),
	HiddenColor = C3.new(1,1,1)
}

Tracers = {
	Enabled = true,
	Thickness = 2,
	MaxDistance = 1000,
	FadeWithMaxDistance = true,
	HighlightVisible = false,
	HighlightColor = C3.new(0,1,0),
	Origin = "Center",
}

NameTag = {
	Enabled = true
}

Wallhack = {
	Enabled = true,
	PerformanceMode = false, -- Slows updating slightly, but increases performance.
}

Gun = {
	Esp = true,
	MaxDistance = 50, -- for esp.
	BulletSpeed = 2650,
}

Miscellanous = {
	HideArms = false,
	Fullbright = false,
	RemoveSky = true
}

local UseDistance = str_lower(Aim.TargetMode) == "distance"

local StoredPlayers
local StoredCharacters
local Running = false

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local InputService = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local PlayerList = {
	GetPlayers = function(self, EnemiesOnly)
		local PlayersVar = {}
		
		for Key, Value in next, self do
			if type(Value) ~= "function" and Key ~= Players.LocalPlayer.Name then
				if EnemiesOnly and Client.Player.TeamColor ~= self[Key].Player.TeamColor then
					Insert(PlayersVar, Value)
				else
					Insert(PlayersVar, Value)
				end
			end
		end
			
		return PlayersVar
	end,
	GetCharacters = function(self, EnemiesOnly)
		local Characters = {}
		
		for _, Player in next, StoredPlayers do
			if (EnemiesOnly and Player.IsEnemy) or not EnemiesOnly then
				local Character = Player.Character
				if Character then
					Insert(Characters, Player.Character)
				end
			end
		end
		return Characters
	end
}

local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")
local CoreGui = game.CoreGui
local Camera = workspace.CurrentCamera
local Mouse = Players.LocalPlayer:GetMouse()
local SpawnPoint = workspace.Lobby.Spawn1

local WindowFocused = true
local Aiming = false
local AimTarget = nil

local CurrentDebounce = Aim.TargetDebounce
local CalculateTrajectory = loadstring(game:HttpGet("https://pastebin.com/raw/2JQ2Hbwe", true))()

local BaseLine = Instance.new("Frame")
BaseLine.Name = "BaseLine"
BaseLine.BorderSizePixel = 0
BaseLine.BorderColor3 = C3.new()

local function RandomCharGenerator(Length)
	local tb = {}
	for i = 1, Length do
		tb[i] = string.char(math.random(0, 100))
	end
	return table.concat(tb)
end

local Ace = Instance.new("ScreenGui", CoreGui)
Ace.Name = RandomCharGenerator(20)
print(Ace.Name)

local VPAce = Ace:Clone()
VPAce.IgnoreGuiInset = true
VPAce.Parent = CoreGui

local Notice = Instance.new("TextLabel")
Notice.Text = "NOTICE:\nThis script was written by AvexusDev.\nAnyone else who claims credit is lying and attempting to steal my work.\n\nIf you'd like to donate or contact me,\nopen the developer console with F9.\nIf you encounter any severe bugs, try pressing LeftCtrl, tabbing out and tabbing back in.\n\nThanks for using my script, and happy fragging!\n\nThis closes automatically in 10 seconds."
Notice.BackgroundTransparency = 1/4
Notice.BackgroundColor3 = C3.new()
Notice.TextColor3 = C3.new(1, 1, 1)
Notice.Size = UD2.new(1, 0, 1, 0)
Notice.Font = Enum.Font.Gotham
Notice.TextSize = 32
Notice.ZIndex = huge
Notice.Parent = Ace

delay(10, function() Notice:Destroy() end)

local StartUp_Sound = Instance.new("Sound", Camera)
StartUp_Sound.SoundId = "rbxassetid://2668759868"

local LockOn_Sound = Instance.new("Sound", Camera)
LockOn_Sound.SoundId = "rbxassetid://538769304"
LockOn_Sound.Volume = 1/4

local Weapons = {
	["Assault Rifle"] = {"AK12", "AN-94", "AS VAL", "SCAR-L", "AUG A1", "M16A4", "G36", "M16A3",
	 "AUG A2", "FAMAS", "AK47", "AUG A3", "L85A2", "HK416", "AK74", "AKM", "AK103", "M231"},
	["Battle Rifle"] = {"BEOWULF ECR", "SCAR-H", "AK12BR", "G3", "AG-3", "HENRY 45-70", "FAL 50.00"},
	["Carbine"] = {"M4A1", "G36C", "M4", "L22", "SCAR PDW", "AKU12", "GROZA-1", "AK12C", "HONEY BADGER",
	 "SR-3M", "GROZA-4", "MC51SD", "FAL 50.63 PARA", "1858 CARBINE", "AK105"},
	["Shotgun"] = {"KSG 12", "REMINGTON 870", "DBV12", "KS-23M", "SAIGA-12", "STEVENS DB", "AA-12", "SPAS-12"},
	["PDW"] = {"MP5K", "UMP45", "MP7", "MAC10", "P90", "MP5", "COLT SMG 635", "L2A3", "MP5SD", "MP10", "M3A1",
	 "MP5/10", "AUG A3 PARA", "PPSH-41", "FAL PARA SHORTY", "KRISS VECTOR", "MP40"},
	["DMR"] = {"MK11", "SKS", "VSS VINTOREZ", "MSG90", "BEOWULF TCR", "SA58 SPR", "SCAR SSR"},
	["LMG"] = {"COLT LMG", "M60", "AUG HBAR", "MG36", "RPK12", "L86 LSW", "RPK", "HK21", "SCAR HAMR", "RPK74",
	 "MG3KWS"},
	["Sniper Rifle"] = {"INTERVENTION", "REMINGTON 700", "DRAGUNOV SVU", "AWS", "BFG 50", "L115A3", "MOSIN NAGANT",
	 "DRAGUNOV SVDS", "HECATE II", "STEYR SCOUT"},
	
	GetWeapons = function(self)
		local tables = {}
		for avexisarealgamer, donttrytostealmyscriptpls in next, self do
			if typeof(donttrytostealmyscriptpls) == "table" then
				Insert(tables, {avexisarealgamer, donttrytostealmyscriptpls})
			end
		end
		return tables
	end
}

local whydidimakeafunction = Weapons:GetWeapons()
local function Rainbow() return C3.fromHSV(sin((tick() / 3) % 1), 0.5, 1) end

local Folders = {
	["Chams"] = Instance.new("Folder"),
	["Tracers"] = Instance.new("Folder"),
	["Boxes"] = Instance.new("Folder")
}

for Name, Folder in next, Folders do
	Folder.Name = Name
	Folder.Parent = Ace
end

Folders.Rods = Instance.new("Folder", workspace)
Folders.Rods.Name = "Rods"

Folders.Boxes.Parent = workspace

local DeadBody = workspace:WaitForChild("DeadBody")
local GunDrop = workspace:WaitForChild("Ignore").GunDrop

local SampleInfo = Instance.new("TextLabel")
SampleInfo.BackgroundTransparency = 1
SampleInfo.Size = UD2.new(1, 0, 1/6, 0)
SampleInfo.Font = Enum.Font.Gotham
SampleInfo.TextScaled = true
SampleInfo.TextStrokeTransparency = 3/4
SampleInfo.TextColor3 = C3.new(1,1,1)
SampleInfo.TextTransparency = 0

local TopRight = SampleInfo:Clone()
TopRight.TextXAlignment = Enum.TextXAlignment.Right
TopRight.TextYAlignment = Enum.TextYAlignment.Top
TopRight.Text = "GameSense 2.0 by AvexusDev\nLast updated 10/07/19"
TopRight.TextScaled = false
TopRight.TextSize = 16
TopRight.Position = UD2.new(0, -8, 0, 8)
TopRight.Parent = Ace

local FovCircle = Instance.new("ImageLabel", Ace)
FovCircle.AnchorPoint = V2.new(0.5, 0.5)
FovCircle.BackgroundTransparency = 1
FovCircle.Position = UD2.new(0.5, 0, 0.5, 0)
FovCircle.Size = UD2.new(0, Aim.FovPx * 2, 0, Aim.FovPx * 2)
FovCircle.Image = "rbxassetid://3260808247"
FovCircle.ImageTransparency = 0.8

local AimPoint = Instance.new("Frame", Ace)
AimPoint.Name = "AimPoint"
AimPoint.BackgroundColor3 = C3.new(1,1,1)
AimPoint.Size = UD2.new(0, 4, 0, 4)
AimPoint.AnchorPoint = V2.new(0.5, 0.5)

local PercentMatch = Instance.new("TextLabel", AimPoint)
PercentMatch.Name = "PercentMatch"
PercentMatch.AnchorPoint = V2.new(0.5, 1)
PercentMatch.TextColor3 = C3.new(1,1,1)
PercentMatch.Font = Enum.Font.GothamBlack
PercentMatch.Text = "undefined"
PercentMatch.TextSize = 10
PercentMatch.TextStrokeTransparency = 0.75
PercentMatch.BackgroundTransparency = 1
PercentMatch.Size = UD2.new(0, 20, 0, 10)
PercentMatch.Position = UD2.new(0.5, 0, -1, 0)

local ViewportFrame = Instance.new("ViewportFrame", VPAce)
ViewportFrame.Size = UDim2.new(1, 0, 1, 0)
ViewportFrame.CurrentCamera = workspace.CurrentCamera
ViewportFrame.BackgroundTransparency = 1
ViewportFrame.ImageTransparency = 1/4

local omg = Instance.new("BoolValue", Players.LocalPlayer)
omg.Name = "epic"

local epics = 0
for _, v in next, Players.LocalPlayer:GetChildren() do
	if (v:IsA("BoolValue") and v.Name == "epic") then
		epics = epics + 1
	end
end

local function Fullbright()
	Lighting.GlobalShadows = false
	Lighting.Brightness = 0.5
	Lighting.OutdoorAmbient = C3.new(1, 1, 1)
	Lighting.Ambient = C3.new(1, 1, 1)

	Lighting.MapLighting:WaitForChild("Ambient").Value = C3.new(1, 1, 1)
	Lighting.MapLighting:WaitForChild("OutdoorAmbient").Value = C3.new(1, 1, 1)

	-- You don't need light sources if you have fullbright on.
	for _, v in next, workspace:GetDescendants() do
		if v:IsA("Light") then
			v:Destroy()
		end
	end
end

if Miscellanous.Fullbright then
	Fullbright()
end

if Miscellanous.RemoveSky then
	Lighting.ClockTime = 0
	Instance.new("Sky", Lighting).CelestialBodiesShown = false
end

if Miscellanous.HideArms then
	workspace.CurrentCamera.ChildAdded:Connect(function(Child)
		if str_match(Child.Name, "Arm") then
			Child:Destroy()
		end
	end)
end

local MouseClick = function()
	if not RunService:IsStudio() then
		mouse1press()
		RunService.RenderStepped:Wait()
		mouse1release()
	else
		warn("Cannot force a Mouse Click in Studio.")
	end
end

local ShowUIElement = function(Element, Enabled)
	Element.Visible = Enabled
	for _, v in next, Element:GetDescendants() do
		v.Visible = Enabled
	end
end

local ClearTable = function(Table, IsObject)
	for k, v in next, Table do
		if IsObject then
			v:Destroy()
		end
		Table[k] = nil
	end
end

local FindNumbers = function(String)
	String = String.gsub(string, ",", "")
	return tonumber(String)
end

SetUp = function(Player)
	local Data = {}
	local Rod
	
	Data.Name = Player.Name
	Data.Player = Player
	Data.Character = Player.Character or Player.CharacterAdded:Wait()
	Data.IsEnemy = Player.TeamColor ~= Players.LocalPlayer.TeamColor
	Data.Limbs = {}
	Data.Chams = {}
	Data.ObscuringParts = {}
	Data.Tracer = nil
	Data.BoundingBox = nil
	Data.Wallhack = nil
	Data.Visible = true
	Data.OnScreen = false
	Data.Wallbangable = false
	Data.Spawned = false
	Data.Distance = 0
	
	for _, Limb in next, Data.Character:GetChildren() do
		if Limb:IsA("BasePart") then
			Data.Limbs[Limb.Name] = Limb
		end
	end
	
	Data.GetGun = function(self)
		if Data.Spawned and Data.Character then
			local Gun
			for _, t in next, whydidimakeafunction do
				for i, _ in next, t[2] do
					local gun = t[2][i]
					local model = Data.Character:FindFirstChildOfClass("Model")
					if model then
						Gun = (model.Name == gun and gun) or nil
					end
					if (Gun ~= nil) then
						return Gun
					end
				end
			end
		end
	end
	
	Data.DoChams = function(Enabled)
		ClearTable(Data.Chams, true)
		
		if Enabled then
			local Visible = Data:IsVisible()
			for _, Limb in next, Data.Limbs do
				if Limb.Name ~= "HumanoidRootPart" then
					local Cham = Instance.new("BoxHandleAdornment")
					local IsHead = Limb.Name == "Head"
					Cham.Name = Data.Name.." "..Limb.Name
					Cham.Adornee = Limb
					Cham.AlwaysOnTop = true
					Cham.Transparency = Chams.Transparency
					Cham.Size = V3.new(IsHead and Limb.Size.Z or Limb.Size.X, Limb.Size.Y, Limb.Size.Z)
					Cham.Color3 = Visible and Chams.VisibleColor or Chams.HiddenColor
					Cham.ZIndex = 1
					Insert(Data.Chams, Cham)
					Cham.Parent = Folders.Chams
				end
			end
		else
			for _, Cham in next, Data.Chams do
				Cham:Destroy()
			end
			for _, Cham in next, Folders.Chams:GetChildren() do
				if str_match(Cham.Name, Data.Name) then
					Cham:Destroy()
				end
			end
		end
	end
	
	Data.DoNameTag = function(Enabled)
		if Enabled then
			local BillboardGui = Instance.new("BillboardGui")
			BillboardGui.Name = "NameTag"
			BillboardGui.ExtentsOffset = V3.new(0, 1.25, 0)
			BillboardGui.LightInfluence = 0
			BillboardGui.SizeOffset = V2.new(0, 0.5)
			BillboardGui.Size = UD2.new(5, 50, 2, 50)
			BillboardGui.AlwaysOnTop = true
			
			local ListLayout = Instance.new("UIListLayout", BillboardGui)
			ListLayout.FillDirection = Enum.FillDirection.Vertical
			ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			ListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			
			local Arrow = SampleInfo:Clone()
			Arrow.LayoutOrder = 100
			Arrow.Name = "Arrow"
			Arrow.Text = "	▼"
			Arrow.Parent = BillboardGui
			
			local Distance = SampleInfo:Clone()
			Distance.LayoutOrder = 50
			Distance.Name = "Distance"
			Distance.Text = "undefined"
			Distance.Parent = BillboardGui
			
			--[[
			local EquippedGun = SampleInfo:Clone()
			EquippedGun.LayoutOrder = 25
			EquippedGun.Name = "EquippedGun"
			EquippedGun.Text = "..?"

			spawn(function()
				local Gun
				while Data and (not Gun) do
					Gun = Data:GetGun()
					wait(0.5)
				end
				EquippedGun.Text = Gun
			end)
			
			EquippedGun.Parent = BillboardGui
			]]
			
			local NameTag = SampleInfo:Clone()
			NameTag.LayoutOrder = 0
			NameTag.Name = "NameTag"
			NameTag.Text = Data.Name
			NameTag.Font = Enum.Font.GothamBold
			NameTag.TextStrokeTransparency = 2/3
			NameTag.Parent = BillboardGui
			
			Data.NameTag = BillboardGui
			Data.NameTag.Parent = Data.Character
		else
			if Data.NameTag then
				Data.NameTag:Destroy()
			elseif StoredCharacters ~= nil then
				for n, v in next, StoredCharacters do
					if n == Data.Name and v:FindFirstChild("NameTag") then
						v:Destroy()
					end
				end
			end
		end
	end
	
	Data.DoBox = function(Enabled)
		local AdorneePart = Data.Limbs["Torso"]
		
		if Enabled and AdorneePart then
			local Thiccness = Box.Thickness
			
			local BillboardGui = Instance.new("BillboardGui")
			BillboardGui.Name = Data.Name
			BillboardGui.Adornee = AdorneePart
			BillboardGui.AlwaysOnTop = true
			BillboardGui.Size = UD2.new(5.5, 0, 5.5, 0)
			
			local Frame = Instance.new("Frame", BillboardGui)
			Frame.BackgroundTransparency = 0.75
			Frame.Size = UD2.new(1, 0, 1, 0)
			
			local Top = Instance.new("Frame", Frame)
			Top.Name = "Top"
			Top.Size = UD2.new(1, 0, 0, Thiccness)
			Top.BackgroundColor3 = C3.new(1,1,1)
			Top.BorderSizePixel = 0
			
			local Bottom = Top:Clone()
			Bottom.Name = "Bottom"
			Bottom.AnchorPoint = V2.new(0, 1)
			Bottom.Position = UD2.new(0, 0, 1, 0)
			Bottom.Parent = Frame
			
			local Left = Top:Clone()
			Left.Name = "Left"
			Left.Size = UD2.new(0, Thiccness, 1, 0)
			Left.Parent = Frame
			
			local Right = Left:Clone()
			Right.Name = "Right"
			Right.AnchorPoint = V2.new(1, 0)
			Right.Position = UD2.new(1, 0, 0, 0)
			Right.Parent = Frame			
			
			BillboardGui.Parent = Folders.Boxes
			Data.BoundingBox = BillboardGui
		elseif not Enabled then
			if Data.BoundingBox then
				Data.BoundingBox:Destroy()
			else
				for _, v in next, Folders.Boxes:GetChildren() do
					if str_match(v.Name, Data.Name) then
						v:Destroy()
					end
				end
			end
		end
	end
	
	Data.IsVisible = function(Simple, DisregardOnScreen)
		local Visible = false
		local ScreenPoint
		if Data and Data.Spawned and Data.Limbs.Head then
			local ObscuringParts = Data.ObscuringParts
			local ScreenPoint, OnScreen = Camera:WorldToScreenPoint(Data.Limbs.Head.Position)
			Data.OnScreen = OnScreen
			
			if OnScreen or DisregardOnScreen then
				if Simple then 
					Visible = #ObscuringParts < 1
				else
					Visible = true
					for _, Part in next, ObscuringParts do
						if Part.Transparency == 0 then
							Visible = false
						end
					end
				end
			end
		end
		return Visible, ScreenPoint
	end
	
	Data.IsWallbangable = function()
		local Wallbangable = false
		local AimPart = Data.Limbs[Aim.AimPart]
		local ObscuringParts = Data.ObscuringParts
		
		if AimPart then				
			local Studsbanged = V3.new(0, 0, 0)
			local Wallsbanged = #ObscuringParts
			
			if Wallsbanged < Wallbang.MaxWalls  then
				for _, Part in next, ObscuringParts do
					if (Part.Transparency == 0) then
						local Size = Part.Size
						Studsbanged = V3.new(Studsbanged.X + Size.X, Studsbanged.Y + Size.Y, Studsbanged.Y + Size.Z)
					end
				end
				if (Studsbanged.X <= Wallbang.MaxStuds) or (Studsbanged.Y <= Wallbang.MaxStuds) or (Studsbanged.X <= Wallbang.MaxStuds) then
					Wallbangable = true
				end
			end
		end
		return Wallbangable
	end
	
	Data.SetColor = function(Color)
		if Chams.Enabled and Data then
			for _, Cham in next, Data.Chams do
				if Cham:IsA("HandleAdornment") then
					local ChamHATI = TweenInfo.new(1/15, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
					local ChamHAT = TweenService:Create(Cham, ChamHATI, {["Color3"] = Color}) 
					ChamHAT:Play()
				end
			end
		end
		--[[
		if BoundingBox then
			for _, BoxPart in next, BoundingBox:GetChildren() do
				if BoxPart:IsA("GuiObject") then
					BoxPart.BackgroundColor3 = Color
				end
			end
		end
		]]
	end
	
	Data.GetDistance = function()
		local Rod = Folders.Rods:FindFirstChild(Player.Name)
		return Rod and Rod.CurrentDistance or 0
	end
	
	Data.RemoveAllEsp = function()
		Data.DoBox(false)
		Data.DoChams(false)
		Data.DoNameTag(false)

		if Data.Tracer then
			Data.Tracer:Destroy()
			Data.Tracer = nil
		end

		if Data.Wallhack then
			Data.Wallhack:Destroy()
			Data.Wallhack = nil
		end
	end
	
	Player.CharacterAdded:Connect(function()
		Data = nil
		PlayerList[Player.Name] = SetUp(Player)
	end)
	
	spawn(function()
		while Data do
			if Data.Spawned then
				local Points = {Camera.CFrame.Position, Data.Limbs.Head.Position}
				local Ignore = {Camera, Client.Character, Data.Character}
				Data.ObscuringParts = Camera:GetPartsObscuringTarget(Points, Ignore)
			end
			wait()
		end
	end)
	
	Player:GetPropertyChangedSignal("Team"):Connect(function()
		Data.IsEnemy = Player.TeamColor ~= Players.LocalPlayer.TeamColor
	end)

	-- warn("Set up", Data.Name)
	Data.RootPart = Data.Limbs.HumanoidRootPart
	Data:RemoveAllEsp()
	return Data
	end
	
local DrawTracerLine = function(PlayerName, DrawOrigin, EndPoint, Color, Thickness, Transparency)
    if PlayerList[PlayerName] ~= nil then
        local Displacement = (EndPoint - DrawOrigin)
        local Line = Folders.Tracers:FindFirstChild(PlayerName) or BaseLine:Clone()
        Thickness = Thickness or Tracers.Thickness
        
        Line.Name = PlayerName
        Line.BackgroundColor3 = Color
        Line.Size = UD2.new(0, Displacement.Magnitude, 0, Thickness)
        Line.Rotation = deg(atan2(Displacement.Y, Displacement.X))
        Line.AnchorPoint = V2.new(0.5, 0.5)
        Line.BackgroundTransparency = Transparency
        Line.Position = UD2.new(
            0, ((DrawOrigin.X + (Displacement.X / 2))),
            0, ((DrawOrigin.Y + (Displacement.Y / 2)) - 1)
        )
        PlayerList[PlayerName].Tracer = Line
        Line.Parent = Folders.Tracers
    end
end

local MouseMove = function(X, Y)
	if not RunService:IsStudio() then
		mousemoverel((X - Mouse.X) * Aim.X_Sensitivity, (Y - Mouse.Y) * Aim.Y_Sensitivity)
	else
		warn("("..X..", "..Y..")", "Cannot move mouse in Studio.")
	end
end

local AimRoutine = function(Position)
	MouseMove(Position.X, Position.Y)
end

Client = SetUp(Players.LocalPlayer)
PlayerList[Client.Name] = Client

warn("GameSense has initialized.\nWelcome, "..Client.Player.Name.."!\n", "If you like this cheat, I'd really appreciate it if you donated! paypal.me/gamesensedonation :)\n\nHere's my discord: Avexus#1866")
StartUp_Sound:Play()

for _, Player in next, Players:GetPlayers() do
	if Player ~= Players.LocalPlayer then
		PlayerList[Player.Name] = SetUp(Player)
	end
end

Players.PlayerAdded:Connect(
function(Player)
	PlayerList[Player.Name] = SetUp(Player)
end)

Players.PlayerRemoving:Connect(
function(Player)
	PlayerList[Player.Name]:RemoveAllEsp()
	PlayerList[Player.Name] = nil
end)

InputService.WindowFocused:Connect(function()
	WindowFocused = true
end)

InputService.WindowFocusReleased:Connect(function()
	WindowFocused = false
end)

local Steps = 0
local StoredDirection = 0
local PercentMatchNum = 0

local MouseFreed = Enum.MouseBehavior.Default
local MouseLocked = Enum.MouseBehavior.LockCurrentPosition

local function MainFunction()
	if (WindowFocused and Running) then
		Steps = Steps + 1
		local Rainbow = Rainbow()
		local Min = huge
		local OnDebounce = CurrentDebounce > 0
		local NumVisPlrs = 0
	
		local AimPart = AimTarget and AimTarget.Limbs[Aim.AimPart]

		AimTarget = (Aim.AimLock) and AimTarget or nil
		
		for _, Player in next, StoredPlayers do
			if Player.IsEnemy then
				local Character = Player.Character
				local FakeCharacter = ViewportFrame:FindFirstChild(Character.Name)
				local IsVisible = Player:IsVisible()
				local IsWallbangable = Wallbang.Enabled and (Player.Distance < Wallbang.MaxDist) and (Player:IsWallbangable())
				local Head = Player.Limbs["Head"]
				local Part = Player.Limbs[Aim.AimPart]
				local HeadScreenPos = Head and Camera:WorldToScreenPoint(Head.Position + V3.new(0, -4.5, 0))
				Player.Distance = huge

				if (Player ~= Client and Client.RootPart and Player.RootPart) then
					Player.Distance = (Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.RootPart.Position).Magnitude
				end
				
				-- Universal ESP Handler
				if (Steps % 20) == 0 then
					if (not Player.Spawned) and Player.RootPart and (SpawnPoint.Position - Player.RootPart.Position).Magnitude > 50 then
						Player.Spawned = true

						if Player ~= Client and Player.IsEnemy then
							local EspVisibleOnly = Esp.ShowVisibleOnly and Player.Visible
							local ChamsVisibleOnly = Chams.ShowVisibleOnly and Player.Visible
							local BoxVisibleOnly = Box.ShowVisibleOnly and Player.Visible
							if Chams.Enabled then
								if ChamsVisibleOnly or not Chams.ShowVisibleOnly then
									Player.DoChams(true)
								end
							end
							if Box.Enabled then
								if BoxVisibleOnly or not Box.ShowVisibleOnly then
									Player.DoBox(true)
								end
							end
							if NameTag.Enabled then
								Player.DoNameTag(true)
							end
						elseif Player == Client then
							Fullbright()
						end
					end
					if Player.Spawned then
						if Player.NameTag:FindFirstChild("Distance") then
							Player.NameTag.Distance.Text = tostring(floor(Player.Distance)).."s"
						end
	
						if (SpawnPoint.Position - Player.RootPart.Position).Magnitude < 100 then
							Player.Spawned = false
							Player:RemoveAllEsp()
						end
					end
				end
				
				-- Tracers
				if (Player.Spawned and Tracers.Enabled and HeadScreenPos and HeadScreenPos.Z > 0) then
					DrawTracerLine(
						Player.Name,
						V2.new(Camera.ViewportSize.X * 0.5, Camera.ViewportSize.Y),
						V2.new(HeadScreenPos.X, HeadScreenPos.Y),
						C3.new(1,1,1),
						Tracers.Thickness,
						Tracers.FadeWithMaxDistance and Player.Distance / Tracers.MaxDistance or 0
					)
				elseif Player.Tracer then
					Player.Tracer:Destroy()
				end
				
				-- Chams
				if (not Player.Visible and IsVisible) then
					Player.Visible = true
					Player.SetColor(Chams.VisibleColor)
					if Chams.Enabled and Chams.ShowVisibleOnly and #Player.Chams < 1 then
						Player.DoChams(true)
					end
				elseif (not IsVisible and Player) then
					Player.Visible = false
					
					if AimTarget == Player then
						AimTarget = nil
					end
					
					Player.SetColor(IsWallbangable and Chams.WallbangColor or Chams.HiddenColor)
				end
				
				-- Wallhack	
				if Wallhack.Enabled and ((not Wallhack.PerformanceMode) or (Wallhack.PerformanceMode and Steps % 2 == 0)) then
					if (Character and Player.IsEnemy and Player.OnScreen and not Player.Visible) then
						if (not Character.Archivable) then
							Character.Archivable = true
						end
						
						if (FakeCharacter) then
							for _, Part in next, (FakeCharacter:GetChildren()) do
								if (Character:FindFirstChild(Part.Name)) then
									if (Part:IsA("Part")) or (Part:IsA("MeshPart")) then
										Part.CFrame = (Character:FindFirstChild(Part.Name).CFrame) or CF.new()
									end
								end
							end
						else
							FakeCharacter = Character:Clone()
							for _, v in next, FakeCharacter:GetDescendants() do
								if v:IsA("BillboardGui") or v:IsA("Model") then
									v:Destroy()
								end
							end
							FakeCharacter.Parent = ViewportFrame
							Player.Wallhack = FakeCharacter
						end
					elseif FakeCharacter then
						FakeCharacter:Destroy()
					end
				end

				if (AimTarget and PlayerList[AimTarget.Name] == nil) then
					AimTarget = nil
				end
	
				-- Aimbot
				if (not AimTarget) and (Aim.KeyHeld or Aim.Toggled) then
					StoredDirection = nil
					local CanTarget = IsVisible or (IsWallbangable and Aim.Wallbang)
					
					if (CanTarget and Part) then
						local Distance = huge
						if (not UseDistance) then
							local ScreenPoint, Visible = Camera:WorldToScreenPoint(Part.Position)
							if Visible then
								Distance = (V2.new(Mouse.X, Mouse.Y) - V2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								Distance = (Distance <= Aim.FovPx) and Distance or huge 
							end
						elseif Client.RootPart then
							local _, Visible = Camera:WorldToScreenPoint(Part.Position)
							if Visible then
								Distance = Player.Distance
							end
						end
						if Distance < Min then
							Min = Distance
							AimPart = Part
							AimTarget = Player
							LockOn_Sound:Play()
						end
					end
				end
			end
		end
	
		if (AimTarget and AimPart) and (Aim.KeyHeld or Aim.Toggled) then
			Aiming = true
			local Origin = Camera.CFrame.Position
			local Target = AimPart.Position + (AimTarget.RootPart.Velocity / 16)

			if (not StoredDirection or Steps % 3 == 0) then
				StoredDirection = CalculateTrajectory(Origin, nV, V3.new(0, -196.2, 0), Target, nV, nV, Gun.BulletSpeed)
			end

			local PartPos = Camera:WorldToScreenPoint(Target)
			local BallisticPos = Camera:WorldToScreenPoint(Target + StoredDirection)
			local NewPosition = V2.new(PartPos.X, PartPos.Y - abs(PartPos.Y - BallisticPos.Y) * Aim.DropCompensation)
			
			ShowUIElement(AimPoint, true)
			AimPoint.Position = UD2.new(0, NewPosition.X, 0, NewPosition.Y)
			local PxOffset = (V2.new(Mouse.X, Mouse.Y) - V2.new(NewPosition.X, NewPosition.Y)).Magnitude
			PercentMatchNum = floor(PxOffset)
			PercentMatch.Text = PercentMatchNum
			
			if (TriggerBot.Enabled and (PxOffset >= TriggerBot.MaxPxOffset)) then
				if (TriggerBot.MustBeScopedIn and PlayerGui.MainGui:WaitForChild("ScopeFrame").Visible) or not TriggerBot.MustBeScopedIn then
					if TriggerBot.Delay > 0 then
						delay(TriggerBot.Delay, MouseClick)
					else
						MouseClick()
					end
				end
			end
			
			AimRoutine(NewPosition)
		else
			Aiming = false
			ShowUIElement(AimPoint, false)
		end
		
		FovCircle.ImageColor3 = Rainbow
		FovCircle.Position = UD2.new(0, Mouse.X, 0, Mouse.Y)
	end
end

if Gun.Esp then
    GunDrop.ChildAdded:Connect(function(Child)
        if Child:IsA("Model") and Child.Name == "Dropped" then
            local BillboardGui = Instance.new("BillboardGui")
            BillboardGui.Name = "Tag"
            BillboardGui.ExtentsOffset = V3.new(0, 1.25, 0)
            BillboardGui.LightInfluence = 0
            BillboardGui.SizeOffset = V2.new(0, 0.5)
            BillboardGui.Size = UD2.new(5, 40, 2, 40)
            BillboardGui.MaxDistance = Gun.MaxDistance
            BillboardGui.AlwaysOnTop = true

            local ListLayout = Instance.new("UIListLayout", BillboardGui)
            ListLayout.FillDirection = Enum.FillDirection.Vertical
            ListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
            
            local Arrow = SampleInfo:Clone()
            Arrow.LayoutOrder = 100
            Arrow.Name = "Arrow"
            Arrow.TextTransparency = 1/2
            Arrow.Text = "	▼"
            Arrow.TextColor3 = C3.new(1, 1, 1)
            Arrow.Parent = BillboardGui
            
            local NameTag = SampleInfo:Clone()
            NameTag.LayoutOrder = 0
            NameTag.Name = "NameTag"
            NameTag.TextTransparency = 0.5
            local StrValue = Child:FindFirstChild("Gun")
            NameTag.Text = (StrValue and StrValue.Value) or "Unknown"

            spawn(function()
                StrValue = Child:WaitForChild("Gun", 2)
                if StrValue then
                    NameTag.Text = StrValue.Value
                end
            end)

            NameTag.Font = Enum.Font.GothamBold
            NameTag.TextStrokeTransparency = 2/3
            NameTag.TextColor3 = C3.new(1, 1, 1)
            NameTag.Parent = BillboardGui
            BillboardGui.Parent = Child
        end
    end)
end

InputService.InputBegan:Connect(function(Input)
	if (Input.KeyCode == Aim.Key or Input.UserInputType == Aim.Key) then
		if Aim.Toggle then
			Aim.Toggled = not Aim.Toggled
		else
			Aim.KeyHeld = true
		end
	elseif (Input.KeyCode == Enum.KeyCode.LeftControl) and (epics <= 1) and Running then
		warn("RELOADING ...")
		RunService:UnbindFromRenderStep("Cheat")
		Running = false

		for n, p in next, StoredPlayers do
			p:RemoveAllEsp()
		end

		VPAce:Destroy()
		Ace:Destroy()

		Players.LocalPlayer:FindFirstChild("epic"):Destroy()
		loadstring(game:HttpGet(('https://pastebin.com/raw/ufnW61UM'),true))()
	end
end)

InputService.InputEnded:Connect(function(Input)
	if (Input.KeyCode == Aim.Key or Input.UserInputType == Aim.Key) then
		Aim.KeyHeld = false
	end
end)

local MuzzleVelocityLabel
local PenetrationDepthLabel

for _, v in next, PlayerGui:GetChildren() do
	if v.Name == "ScreenGui" and #v:GetChildren() > 0 then
		for _, x in next, v:GetDescendants() do
			if x.Name == "LOL" then
				-- i swear PF really needs to learn how to make proper guis
				for _, z in next, x.Frame.Frame.Frame:GetChildren() do
					if str_match(z.Text, "studs/s") then
						z.Name = "MVL"
						MuzzleVelocityLabel = z
					elseif str_match(z.Text, "studs") and (#z.Text > 12) then
						z.Name = "PDL"
						PenetrationDepthLabel = z
					end
				end
			end
		end
	end
end

Running = true
RunService:BindToRenderStep("Cheat", 201, MainFunction)

spawn(function()
	while wait(1/2) do
		Gun.BulletSpeed = (tonumber(str_match(MuzzleVelocityLabel and MuzzleVelocityLabel.Text, "%S+$")) or 2000)
		Wallbang.MaxStuds = (tonumber(str_match(PenetrationDepthLabel and PenetrationDepthLabel.Text, "%S+$")) or 1.2)
	end
end)

while wait(1/10) do
	StoredPlayers = PlayerList:GetPlayers()
	StoredCharacters = PlayerList:GetCharacters()
	DeadBody:ClearAllChildren()
end
end