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

_G.toggleKey = "n" 
_G.deleteAllKey = "p" 
_G.partSize = {5,1,5} 
_G.playerVersion = 1

if not game.CoreGui:FindFirstChild("BTOOLSV2") then

local place = game.PlaceId
local update = game:GetService'MarketplaceService':GetProductInfo(game.PlaceId).Updated
local currentGame = game:GetService'MarketplaceService':GetProductInfo(game.PlaceId).Name
local scriptAllowed = true
local places = {
	{527271999,"2019-06-02T06:56:03.487Z"}, -- Noobs
	{2262441883,"2019-06-18T04:00:08.083Z"}, -- Darkrp
	--{2482884152,"2019-06-09T21:28:54.5191025Z"}, -- Darkrp Banland
	{648362523,"2019-06-03T12:34:16.177Z"}, -- Breaking Point
	{3016661674,"2019-06-23T01:48:48.3114918Z"}, -- Rogue
	{1262182609,"DETECTED"}, -- Booga
	{2187990610,"DETECTED"} -- Rovive
}

for _,tplace in next, places do
	if place == tplace[1] then
		if update ~= tplace[2] then
			scriptAllowed = false
			clientVersion = tplace[2]
		end
	end
end

if not scriptAllowed then
	game:GetObjects("rbxassetid://03273103967")[1].Parent = game.CoreGui
	if clientVersion == "DETECTED" then 
		game.CoreGui.avaWarning.Frame.continue.Visible = false
		for _,v in next, game.CoreGui.avaWarning.Frame:GetChildren() do 
			if string.find(v.Text,"This") then 
				v.Text = "This game is currently detected, Ava.gg may release a patch soon for it. Please look at the thread for information on this game."
			end
		end
	end
	game.CoreGui.avaWarning.Frame.abort.MouseButton1Down:Connect(function() game.CoreGui.avaWarning.Enabled = false end)
	game.CoreGui.avaWarning.Frame.continue.MouseButton1Down:Connect(function() game.CoreGui.avaWarning.Enabled = false; scriptAllowed = true end)
	game:HttpGet("http://avarixcommunity.com/api/versionlogging.php?cversion="..clientVersion.."&sversion="..update.."&game="..currentGame, true)
end

repeat wait(1) until scriptAllowed

--> [ Has the script already ran? ]
local ran = Instance.new("Model",game.CoreGui)
ran.Name = "BTOOLSV2"

-- [ GUI Creation ]
local screen = Instance.new("ScreenGui")
screen.Enabled = false
screen.Parent = game.CoreGui

local text = Instance.new("TextLabel")
text.Text = "Shift + MB1 = Delete Wall\nControl + MB1 = Restore Wall\nShift + MB2 = Create Part"
text.Size = UDim2.new(0,193,0,48)
text.Position = UDim2.new(1,-193,1,-48)
text.BackgroundTransparency = 1
text.TextXAlignment = Enum.TextXAlignment.Right
text.TextYAlignment = Enum.TextYAlignment.Top
text.TextColor3 = Color3.fromRGB(255,255,255)
text.TextStrokeTransparency = 0
text.Font = Enum.Font.Arial
text.TextSize = 15
text.Parent = screen

local image = Instance.new("ImageLabel")
image.Image = "rbxassetid://3294453044"
image.Size = UDim2.new(0,118,0,26)
image.ScaleType = Enum.ScaleType.Fit
image.Position = UDim2.new(1,-118,1,-72)
image.BackgroundTransparency = 1
image.Parent = screen

--> [ Variable Set ]
local players = game:GetService("Players")
local context = game:GetService("ContextActionService")
local input = game:GetService("UserInputService")
local player = players.LocalPlayer
local mouse = player:GetMouse()
local parts = {}
local enabled = false
local gui = screen

--> [ User failsafe ]
_G.toggleKey = _G.toggleKey or "n"
_G.partSize = _G.partSize or {10,1,10}
_G.deleteAllKey = _G.deleteAllKey or "p"
_G.playerVersion = _G.playerVersion or 0

-- > [ Game Anti-cheat Bypassing ] 
if place == 527271999 then
	loadstring(game:HttpGet("https://avarixcommunity.com/scripts/bypass.txt"))() -- Noobs-vs-Zombies-Realish-BETA
elseif place == 2262441883 or place == 2482884152 then
	loadstring(game:HttpGet("https://pastebin.com/raw/DPbuFYpe"))() -- DarkRP
elseif place == 648362523 then
	loadstring(game:HttpGet("https://pastebin.com/raw/sEWjV3A8"))() -- Breaking Point
end

--> [ Non-intrusive logging ]
game:HttpGet("http://avarixcommunity.com/api/logging-new.php?version=".._G.playerVersion.."&game="..currentGame, true)

-- [ Functions ]
local function deleteWall()
	mouse.TargetFilter = wallFolder
	part = mouse.Target
	if not part then
		return false
	end
	if part.Parent == partFolder then
		part.Parent = game.CoreGui
		return
	end
	table.insert(parts,{part, part.Transparency, part.Parent, part.CanCollide})
	part.Transparency = .7
	part.Parent = wallFolder
	part.CanCollide = false
end

local function restoreWall()
	mouse.TargetFilter = nil
	part = mouse.Target
	if not part then
		return false
	end
	for i,oldPart in next, parts do
		if oldPart[1] == part then
			part.Transparency = oldPart[2]
			part.Parent = oldPart[3]
			part.CanCollide = oldPart[4]
			table.remove(parts,i)
		end
	end
end

local function generateRandom()
	local charset = "abcdefghijklmnopqrstuvwxyz1234567890"
	local length = math.random(6,14)
	local name = ""
	for i=1, length do
		local char = math.random(1,#charset)
		name = name .. string.sub(charset,char,char)
	end
	return name
end

local function createPart()
	local location = mouse.Hit
	if not location then
		return false
	end
	local newPart = Instance.new("Part")
	newPart.Name = generateRandom()
	newPart.CFrame = location
	newPart.Size = Vector3.new(_G.partSize[1],_G.partSize[2],_G.partSize[3])
	newPart.Orientation = Vector3.new(0,0,0)
	newPart.Anchored = true
	newPart.Parent = partFolder
end

local function processInput(inputObject, processed)
	if not processed then
		if inputObject.UserInputType ==  Enum.UserInputType.MouseButton1 and enabled then
			if input:IsKeyDown(Enum.KeyCode.LeftShift) then
				deleteWall()
			elseif input:IsKeyDown(Enum.KeyCode.LeftControl) then
				restoreWall()
			end
		elseif inputObject.UserInputType ==  Enum.UserInputType.MouseButton2 and enabled then
			 if input:IsKeyDown(Enum.KeyCode.LeftShift) then
				createPart()
			end
		elseif inputObject.UserInputType ==  Enum.UserInputType.Keyboard then
			if string.lower(string.sub(tostring(inputObject.KeyCode),14)) == string.lower(_G.toggleKey) then
				enabled = not enabled
				gui.Enabled = enabled
			elseif string.lower(string.sub(tostring(inputObject.KeyCode),14)) == string.lower(_G.deleteAllKey) then
				for _,child in next, partFolder:GetChildren() do
					child.Parent = game.CoreGui
				end
			end
		end
	end
end

--> [ Events ]
input.InputBegan:Connect(processInput)

--> [ Instance Creation ]
wallFolder = Instance.new("Model")
wallFolder.Name = generateRandom()
wallFolder.Parent = workspace

partFolder = Instance.new("Model")
partFolder.Name = generateRandom()
partFolder.Parent = workspace

end
end