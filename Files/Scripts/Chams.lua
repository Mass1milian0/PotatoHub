VersionString = "1.0.0"
Blacklisted = {""}

for blacklisted,_ in pairs(Blacklisted) do
if game.Players:FindFirstChild(Blacklisted[blacklisted]) then
game.Players:FindFirstChild(Blacklisted[blacklisted]):Kick("You are blacklisted from using TronX Chat Bypasser.                          Blacklisted Username: "..game.Players.LocalPlayer.Name)
elseif not game.Players:FindFirstChild(Blacklisted[blacklisted]) then
if game.Players.LocalPlayer:GetUnder13() == false then
local ScreenGuix = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
ScreenGuix.Name = "IntroGui"
ScreenGuix.Parent = game.CoreGui
ScreenGuix.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ImageLabel.Parent = ScreenGuix
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.249283671, 0, 0.312302828, 0)
ImageLabel.Size = UDim2.new(0.5, 0, 0.375, 0)
ImageLabel.Image = "rbxassetid://3612668789"
ImageLabel.ImageColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ImageLabel.ImageTransparency = 1
wait(.3)
local TronXChatBypasser = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Chat = Instance.new("TextButton")
local Clear = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Sound1 = Instance.new("Sound")
local Sound2 = Instance.new("Sound")
local Sound3 = Instance.new("Sound")
local Sound4 = Instance.new("Sound")
local Sound5 = Instance.new("Sound")
local Sound6 = Instance.new("Sound")
TronXChatBypasser.Name = "TronX Chat Bypasser"
TronXChatBypasser.Parent = game.CoreGui
TronXChatBypasser.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Active = true
Frame.Draggable = true
Frame.Parent = TronXChatBypasser
Frame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.131805152, 0, 0.548895895, 0)
Frame.Size = UDim2.new(0, 222, 0, 126)
Frame.Transparency = 1
Frame.Visible = false
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 1
TextLabel.Size = UDim2.new(0, 222, 0, 32)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "TronX Chat Bypasser Gui"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextStrokeTransparency = 0.75
TextLabel.TextWrapped = true
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BorderColor3 = Color3.new(1, 1, 1)
TextBox.BorderSizePixel = 1
TextBox.ClearTextOnFocus = false
TextBox.Position = UDim2.new(0.0495495498, 0, 0.301587313, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SciFi
TextBox.PlaceholderColor3 = Color3.new(0.588235, 0.588235, 0.588235)
TextBox.PlaceholderText = "Message..."
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
Chat.Name = "Chat"
Chat.Parent = Frame
Chat.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Chat.BorderColor3 = Color3.new(0, 0, 0)
Chat.BorderSizePixel = 1
Chat.Position = UDim2.new(0.0495495498, 0, 0.746031761, 0)
Chat.Size = UDim2.new(0, 90, 0, 24)
Chat.Style = "RobloxButton"
Chat.Font = Enum.Font.SciFi
Chat.Text = "Chat"
Chat.TextColor3 = Color3.new(1, 1, 1)
Chat.TextScaled = true
Chat.TextSize = 14
Chat.TextStrokeTransparency = 0.75
Chat.TextWrapped = true
Clear.Name = "Clear"
Clear.Parent = Frame
Clear.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
Clear.BorderColor3 = Color3.new(0, 0, 0)
Clear.BorderSizePixel = 1
Clear.Position = UDim2.new(0.545045018, 0, 0.746031761, 0)
Clear.Size = UDim2.new(0, 90, 0, 24)
Clear.Style = "RobloxButton"
Clear.Font = Enum.Font.SciFi
Clear.Text = "Clear"
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.TextScaled = true
Clear.TextSize = 14
Clear.TextStrokeTransparency = 0.75
Clear.TextWrapped = true
Sound1.Name = "Click"
Sound1.PlaybackSpeed = 1.5
Sound1.SoundId = "rbxassetid://226892749"
Sound1.Parent = game.CoreGui
Sound2.Name = "Intro"
Sound2.PlaybackSpeed = .891
Sound2.SoundId = "rbxassetid://383635191"
Sound2.Parent = game.CoreGui
Sound3.Name = "Loaded"
Sound3.SoundId = "rbxassetid://216917652"
Sound3.Parent = game.CoreGui
Sound4.Name = "Notification"
Sound4.SoundId = "rbxassetid://180877191"
Sound4.Volume = 1
Sound4.Parent = game.CoreGui
Sound5.Name = "Notification 2"
Sound5.PlaybackSpeed = .472
Sound5.SoundId = "rbxassetid://261082034"
Sound5.Parent = game.CoreGui
UITextSizeConstraint.MinTextSize = 1
UITextSizeConstraint.MaxTextSize = 24
UITextSizeConstraint.Parent = TextBox
game.CoreGui.Intro:Play()
for i=1,50 do
ImageLabel.ImageTransparency = 1 - .02*i
game:GetService("RunService").Stepped:Wait()
end
wait(8)
for i=1,50 do
ImageLabel.ImageTransparency = 0 + .02*i
game:GetService("RunService").Stepped:Wait()
end
local OpenClose = Instance.new("TextButton")
OpenClose.Name = "Open/Close"
OpenClose.Parent = TronXChatBypasser
OpenClose.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
OpenClose.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
OpenClose.Position = UDim2.new(0, 0, 0.616719306, 0)
OpenClose.Size = UDim2.new(0, 80, 0, 40)
OpenClose.Font = Enum.Font.SciFi
OpenClose.Text = "Open TronX Gui"
OpenClose.TextColor3 = Color3.new(1, 1, 1)
OpenClose.TextScaled = true
OpenClose.TextSize = 14
OpenClose.TextStrokeTransparency = 0.5
OpenClose.TextWrapped = true
Chat.MouseButton1Click:Connect(function()
game.CoreGui.Click:Play()
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("أ"..string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(TextBox.Text,"fuc","أfu󠀡c"),"shit","أsh󠀡it"),"bitch","أbi󠀡tch"),"fag","f󠀡ag"),"hitler","hi󠀡tler"),"أfu󠀡cking","أfu󠀡ckingأ"),"di","d󠀡i"),"pus","أpus󠀡"),"assh","أas󠀡sh"),"coc","أc󠀡oc"),"cunt","أأcu󠀡nt"),"tit","t󠀡it"),"pedo","p󠀡edo"),"peni","p󠀡eni"),"vagin","v󠀡agin"),"d󠀡ickh","أd󠀡ickh"),"sperm","أsp󠀡erm"),"bull","أbull"),"dum","أdum"),"hore","h󠀡ore"),"slut","أslu󠀡t"),"porn","p󠀡orn"),"sex","أs󠀡ex"),"dyke","dy󠀡ke"),"d󠀡ip","أdip"),"nig","أأn󠀡ig"),"rap","أra󠀡p"),"cum","أcu󠀡m"),"rap","أra󠀡p"),"kik","ki󠀡k"),"jizz","jiz󠀡z"),"retarded","أre󠀡tarded"),"d󠀡ildo","أd󠀡ildo"),"boobies","bo󠀡obies"),"nude","أأnu󠀡de"),"biatch","bi󠀡atch"),"hentai","h󠀡entai"),"testicl","t󠀡esticl"),"genatalia","g󠀡enatalia"),"boner","b󠀡oner"),"clit","c󠀡lit"),"cooch","c󠀡ooch"),"blowjob","󠀡blo󠀡wjob"),"v󠀡aginas","va󠀡ginas"),"pube","p󠀡ube"),"أc󠀡ocaine","أco󠀡caine"),"mierda","m󠀡ierda"),"perra","p󠀡erra"),"gilipollas","g󠀡ilipollas"),"merde","m󠀡erde"),"connard","c󠀡onnard"),"coño","c󠀡oño"),"Fu","أFu󠀡"),"Shit","أSh󠀡it"),"Bitch","أBi󠀡tch"),"Fag","F󠀡ag"),"Hitler","Hi󠀡tler"),"أFu󠀡cking","أFu󠀡ckingأ"),"Di","D󠀡i"),"Pus","أPus󠀡"),"Assh","أAs󠀡sh"),"Coc","أC󠀡oc"),"Cunt","أأCu󠀡nt"),"Tit","T󠀡it"),"Pedo","P󠀡edo"),"Peni","P󠀡eni"),"Vagin","V󠀡agin"),"Dickh","أD󠀡ickh"),"Sperm","أSp󠀡erm"),"Bull","أBull"),"Dum","أDum"),"Hore","H󠀡ore"),"Slut","أSlu󠀡t"),"Porn","P󠀡orn"),"Sex","أS󠀡ex"),"Dyke","Dy󠀡ke"),"D󠀡ip","أDip"),"Nig","أأN󠀡ig"),"Rap","أRa󠀡p"),"Cum","Cu󠀡m"),"Kik","Ki󠀡k"),"Jizz","Jiz󠀡z"),"Retarded","أRe󠀡tarded"),"D󠀡ildo","أD󠀡ildo"),"Boobies","Bo󠀡obies"),"Nude","N󠀡ude"),"Biatch","Bi󠀡atch"),"Hentai","H󠀡entai"),"Testicl","T󠀡esticl"),"Genatalia","G󠀡enatalia"),"Boner","B󠀡oner"),"Blowjob","B󠀡lowjob"),"Pube","P󠀡ube"),"Clit","C󠀡lit"),"Cooch","C󠀡ooch"),"أC󠀡ocaine","أCo󠀡caine"),"Mierda","M󠀡ierda"),"Perra","P󠀡erra"),"Gilipollas","G󠀡ilipollas"),"Merde","M󠀡erde"),"Connard","C󠀡onnard"),"Coño","C󠀡oño"),"FUC","أFU󠀡C"),"SHIT","أSH󠀡IT"),"BITCH","أBI󠀡TCH"),"FAG","F󠀡AG"),"HITLER","HI󠀡TLER"),"أFU󠀡CKING","أFU󠀡CKINGأ"),"DI","D󠀡I"),"PUS","أPUS󠀡"),"ASSH","أAS󠀡SH"),"COC","أC󠀡OC"),"CUNT","أأCU󠀡NT"),"TIT","T󠀡IT"),"PEDO","P󠀡EDO"),"PENI","P󠀡ENI"),"VAGIN","V󠀡AGIN"),"D󠀡ICKH","أD󠀡ICKH"),"SPERM","أSP󠀡ERM"),"BULL","أBULL"),"DUM","أDUM"),"HORE","H󠀡ORE"),"SLUT","أSLU󠀡T"),"PORN","P󠀡ORN"),"SEX","أS󠀡EX"),"DYKE","DY󠀡KE"),"D󠀡IP","أDIP"),"NIG","أأN󠀡IG"),"RAP","أRA󠀡P"),"CUM","CU󠀡M"),"RAP","أRA󠀡P"),"KIK","KI󠀡K"),"JIZZ","JIZ󠀡Z"),"RETARDED","أRE󠀡TARDED"),"D󠀡ILDO","أD󠀡ILDO"),"BOOBIES","BO󠀡OBIES"),"NUDE","أأNU󠀡DE"),"BIATCH","BI󠀡ATCH"),"HENTAI","H󠀡ENTAI"),"TESTICL","T󠀡ESTICL"),"GENATALIA","G󠀡ENATALIA"),"BONER","B󠀡ONER"),"CLIT","C󠀡LIT"),"COOCH","C󠀡OOCH"),"BLOWJOB","B󠀡LOWJOB"),"أC󠀡OCAINE","أCO󠀡CAINE"),"PUBE","P󠀡UBE"),"MIERDA","M󠀡IERDA"),"PERRA","P󠀡ERRA"),"GILIPOLLAS","G󠀡ILIPOLLAS"),"MERDE","M󠀡ERDE"),"CONNARD","C󠀡ONNARD"),"COÑO","C󠀡OÑO"),"1"," 1 "),"2"," 2 "),"3"," 3 "),"4"," 4 "),"5"," 5 "),"6"," 6 "),"7"," 7 "),"8"," 8 "),"9"," 9 "),"0"," 0 "),"6 9","6 9أ"),"4 2 0","4 2 0أ")," ","أ").."أأ","All")
end)
Clear.MouseButton1Click:Connect(function()
game.CoreGui.Click:Play()
TextBox.Text = ""
end)
OpenClose.MouseButton1Click:Connect(function()
game.CoreGui.Click:Play()
if OpenClose.Text == "Open TronX Gui" and Frame.Transparency == 1 then
OpenClose.Text = "Close TronX Gui"
Frame.Visible = true
for i=1,10 do
TextLabel.BackgroundTransparency = 1 - .1*i
Chat.BackgroundTransparency = 1 - .1*i
Clear.BackgroundTransparency = 1 - .1*i
TextBox.BackgroundTransparency = 1 - .1*i
TextLabel.TextTransparency = 1 - .1*i
Chat.TextTransparency = 1 - .1*i
Clear.TextTransparency = 1 - .1*i
TextBox.TextTransparency = 1 - .1*i
Frame.Transparency = 1 - .05*i
Frame.Position = UDim2.new(0.031805152+.01*i, 0, 0.548895895, 0)
game:GetService("RunService").Stepped:Wait()
end
elseif OpenClose.Text == "Close TronX Gui" and Frame.Transparency == .5 then
OpenClose.Text = "Open TronX Gui"
for i=1,10 do
TextLabel.BackgroundTransparency = 0 + .1*i
Chat.BackgroundTransparency = 0 + .1*i
Clear.BackgroundTransparency = 0 + .1*i
TextBox.BackgroundTransparency = 0 + .1*i
TextLabel.TextTransparency = 0 + .1*i
Chat.TextTransparency = 0 + .1*i
Clear.TextTransparency = 0 + .1*i
TextBox.TextTransparency = 0 + .1*i
Frame.Transparency = .5 + .05*i
Frame.Position = UDim2.new(0.131805152-.01*i, 0, 0.548895895, 0)
game:GetService("RunService").Stepped:Wait()
end
Frame.Visible = false
end
end)
local function CallBack2(Value)
if Value == "Okay" then
game.CoreGui["Notification 2"]:Play()
game.StarterGui:SetCore("SendNotification", {
Title = "TronX Chat Bypasser Loaded!";
Text = "Enjoy swearing! This bypasser was made by Uctron. To chat without hashtags, type \"/e MessageHere\" or use the given gui at the left.";
Icon = "";
Duration = 12;
Button1 = "Okay";
})
end
end
local BindableFunction2 = Instance.new("BindableFunction")
BindableFunction2.OnInvoke = CallBack2
local function CallBack(Value)
if Value == "Continue" then
game.CoreGui.Notification:Play()
game.StarterGui:SetCore("SendNotification", {
Title = "TronX Reminder (Continued)";
Text = "This is the case, because TronX Chat Bypasser is meant to be kept private and obfuscated so Roblox does not patch it.";
Icon = "";
Duration = 45;
Button1 = "Okay";
Callback = BindableFunction2
})
elseif Value == "Okay" then
game.CoreGui["Notification 2"]:Play()
game.StarterGui:SetCore("SendNotification", {
Title = "TronX Chat Bypasser Loaded!";
Text = "Enjoy swearing! This bypasser was made by Uctron. To chat without hashtags, type \"/e MessageHere\" or use the given gui at the left.";
Icon = "";
Duration = 12;
Button1 = "Okay";
})
end
end
local BindableFunction = Instance.new("BindableFunction")
BindableFunction.OnInvoke = CallBack
game.CoreGui.Loaded:Play()
game.StarterGui:SetCore("SendNotification", {
Title = "TronX Reminder";
Text = "Any owners of threads or leaks related to the script or the unicode characters will be blacklisted from this script.";
Icon = "";
Duration = 45;
Button1 = "Continue";
Button2 = "Okay";
Callback = BindableFunction
})
game.Players.LocalPlayer.Chatted:Connect(function(a)
if a:sub(1,3) == "/e " then 
local b = a:sub(4,#a)
local Randomize = math.random(1,2)
if Randomize == 1 then
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("أ"..string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(b,"fuc","أfu󠀡c"),"shit","أsh󠀡it"),"bitch","أbi󠀡tch"),"fag","f󠀡ag"),"hitler","hi󠀡tler"),"أfu󠀡cking","أfu󠀡ckingأ"),"di","d󠀡i"),"pus","أpus󠀡"),"assh","أas󠀡sh"),"coc","أc󠀡oc"),"cunt","أأcu󠀡nt"),"tit","t󠀡it"),"pedo","p󠀡edo"),"peni","p󠀡eni"),"vagin","v󠀡agin"),"d󠀡ickh","أd󠀡ickh"),"sperm","أsp󠀡erm"),"bull","أbull"),"dum","أdum"),"hore","h󠀡ore"),"slut","أslu󠀡t"),"porn","p󠀡orn"),"sex","أs󠀡ex"),"dyke","dy󠀡ke"),"d󠀡ip","أdip"),"nig","أأn󠀡ig"),"rap","أra󠀡p"),"cum","أcu󠀡m"),"rap","أra󠀡p"),"kik","ki󠀡k"),"jizz","jiz󠀡z"),"retarded","أre󠀡tarded"),"d󠀡ildo","أd󠀡ildo"),"boobies","bo󠀡obies"),"nude","أأnu󠀡de"),"biatch","bi󠀡atch"),"hentai","h󠀡entai"),"testicl","t󠀡esticl"),"genatalia","g󠀡enatalia"),"boner","b󠀡oner"),"clit","c󠀡lit"),"cooch","c󠀡ooch"),"blowjob","󠀡blo󠀡wjob"),"v󠀡aginas","va󠀡ginas"),"pube","p󠀡ube"),"أc󠀡ocaine","أco󠀡caine"),"mierda","m󠀡ierda"),"perra","p󠀡erra"),"gilipollas","g󠀡ilipollas"),"merde","m󠀡erde"),"connard","c󠀡onnard"),"coño","c󠀡oño"),"Fu","أFu󠀡"),"Shit","أSh󠀡it"),"Bitch","أBi󠀡tch"),"Fag","F󠀡ag"),"Hitler","Hi󠀡tler"),"أFu󠀡cking","أFu󠀡ckingأ"),"Di","D󠀡i"),"Pus","أPus󠀡"),"Assh","أAs󠀡sh"),"Coc","أC󠀡oc"),"Cunt","أأCu󠀡nt"),"Tit","T󠀡it"),"Pedo","P󠀡edo"),"Peni","P󠀡eni"),"Vagin","V󠀡agin"),"Dickh","أD󠀡ickh"),"Sperm","أSp󠀡erm"),"Bull","أBull"),"Dum","أDum"),"Hore","H󠀡ore"),"Slut","أSlu󠀡t"),"Porn","P󠀡orn"),"Sex","أS󠀡ex"),"Dyke","Dy󠀡ke"),"D󠀡ip","أDip"),"Nig","أأN󠀡ig"),"Rap","أRa󠀡p"),"Cum","Cu󠀡m"),"Kik","Ki󠀡k"),"Jizz","Jiz󠀡z"),"Retarded","أRe󠀡tarded"),"D󠀡ildo","أD󠀡ildo"),"Boobies","Bo󠀡obies"),"Nude","N󠀡ude"),"Biatch","Bi󠀡atch"),"Hentai","H󠀡entai"),"Testicl","T󠀡esticl"),"Genatalia","G󠀡enatalia"),"Boner","B󠀡oner"),"Blowjob","B󠀡lowjob"),"Pube","P󠀡ube"),"Clit","C󠀡lit"),"Cooch","C󠀡ooch"),"أC󠀡ocaine","أCo󠀡caine"),"Mierda","M󠀡ierda"),"Perra","P󠀡erra"),"Gilipollas","G󠀡ilipollas"),"Merde","M󠀡erde"),"Connard","C󠀡onnard"),"Coño","C󠀡oño"),"FUC","أFU󠀡C"),"SHIT","أSH󠀡IT"),"BITCH","أBI󠀡TCH"),"FAG","F󠀡AG"),"HITLER","HI󠀡TLER"),"أFU󠀡CKING","أFU󠀡CKINGأ"),"DI","D󠀡I"),"PUS","أPUS󠀡"),"ASSH","أAS󠀡SH"),"COC","أC󠀡OC"),"CUNT","أأCU󠀡NT"),"TIT","T󠀡IT"),"PEDO","P󠀡EDO"),"PENI","P󠀡ENI"),"VAGIN","V󠀡AGIN"),"D󠀡ICKH","أD󠀡ICKH"),"SPERM","أSP󠀡ERM"),"BULL","أBULL"),"DUM","أDUM"),"HORE","H󠀡ORE"),"SLUT","أSLU󠀡T"),"PORN","P󠀡ORN"),"SEX","أS󠀡EX"),"DYKE","DY󠀡KE"),"D󠀡IP","أDIP"),"NIG","أأN󠀡IG"),"RAP","أRA󠀡P"),"CUM","CU󠀡M"),"RAP","أRA󠀡P"),"KIK","KI󠀡K"),"JIZZ","JIZ󠀡Z"),"RETARDED","أRE󠀡TARDED"),"D󠀡ILDO","أD󠀡ILDO"),"BOOBIES","BO󠀡OBIES"),"NUDE","أأNU󠀡DE"),"BIATCH","BI󠀡ATCH"),"HENTAI","H󠀡ENTAI"),"TESTICL","T󠀡ESTICL"),"GENATALIA","G󠀡ENATALIA"),"BONER","B󠀡ONER"),"CLIT","C󠀡LIT"),"COOCH","C󠀡OOCH"),"BLOWJOB","B󠀡LOWJOB"),"أC󠀡OCAINE","أCO󠀡CAINE"),"PUBE","P󠀡UBE"),"MIERDA","M󠀡IERDA"),"PERRA","P󠀡ERRA"),"GILIPOLLAS","G󠀡ILIPOLLAS"),"MERDE","M󠀡ERDE"),"CONNARD","C󠀡ONNARD"),"COÑO","C󠀡OÑO"),"1"," 1 "),"2"," 2 "),"3"," 3 "),"4"," 4 "),"5"," 5 "),"6"," 6 "),"7"," 7 "),"8"," 8 "),"9"," 9 "),"0"," 0 "),"6 9","6 9أ"),"4 2 0","4 2 0أ")," ","أ").."أ","All")
elseif Randomize == 2 then
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("أ"..string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(b,"fuc","أfu󠀡c"),"shit","أsh󠀡it"),"bitch","أbi󠀡tch"),"fag","f󠀡ag"),"hitler","hi󠀡tler"),"أfu󠀡cking","أfu󠀡ckingأ"),"di","d󠀡i"),"pus","أpus󠀡"),"assh","أas󠀡sh"),"coc","أc󠀡oc"),"cunt","أأcu󠀡nt"),"tit","t󠀡it"),"pedo","p󠀡edo"),"peni","p󠀡eni"),"vagin","v󠀡agin"),"d󠀡ickh","أd󠀡ickh"),"sperm","أsp󠀡erm"),"bull","أbull"),"dum","أdum"),"hore","h󠀡ore"),"slut","أslu󠀡t"),"porn","p󠀡orn"),"sex","أs󠀡ex"),"dyke","dy󠀡ke"),"d󠀡ip","أdip"),"nig","أأn󠀡ig"),"rap","أra󠀡p"),"cum","أcu󠀡m"),"rap","أra󠀡p"),"kik","ki󠀡k"),"jizz","jiz󠀡z"),"retarded","أre󠀡tarded"),"d󠀡ildo","أd󠀡ildo"),"boobies","bo󠀡obies"),"nude","أأnu󠀡de"),"biatch","bi󠀡atch"),"hentai","h󠀡entai"),"testicl","t󠀡esticl"),"genatalia","g󠀡enatalia"),"boner","b󠀡oner"),"clit","c󠀡lit"),"cooch","c󠀡ooch"),"blowjob","󠀡blo󠀡wjob"),"v󠀡aginas","va󠀡ginas"),"pube","p󠀡ube"),"أc󠀡ocaine","أco󠀡caine"),"mierda","m󠀡ierda"),"perra","p󠀡erra"),"gilipollas","g󠀡ilipollas"),"merde","m󠀡erde"),"connard","c󠀡onnard"),"coño","c󠀡oño"),"Fu","أFu󠀡"),"Shit","أSh󠀡it"),"Bitch","أBi󠀡tch"),"Fag","F󠀡ag"),"Hitler","Hi󠀡tler"),"أFu󠀡cking","أFu󠀡ckingأ"),"Di","D󠀡i"),"Pus","أPus󠀡"),"Assh","أAs󠀡sh"),"Coc","أC󠀡oc"),"Cunt","أأCu󠀡nt"),"Tit","T󠀡it"),"Pedo","P󠀡edo"),"Peni","P󠀡eni"),"Vagin","V󠀡agin"),"Dickh","أD󠀡ickh"),"Sperm","أSp󠀡erm"),"Bull","أBull"),"Dum","أDum"),"Hore","H󠀡ore"),"Slut","أSlu󠀡t"),"Porn","P󠀡orn"),"Sex","أS󠀡ex"),"Dyke","Dy󠀡ke"),"D󠀡ip","أDip"),"Nig","أأN󠀡ig"),"Rap","أRa󠀡p"),"Cum","Cu󠀡m"),"Kik","Ki󠀡k"),"Jizz","Jiz󠀡z"),"Retarded","أRe󠀡tarded"),"D󠀡ildo","أD󠀡ildo"),"Boobies","Bo󠀡obies"),"Nude","N󠀡ude"),"Biatch","Bi󠀡atch"),"Hentai","H󠀡entai"),"Testicl","T󠀡esticl"),"Genatalia","G󠀡enatalia"),"Boner","B󠀡oner"),"Blowjob","B󠀡lowjob"),"Pube","P󠀡ube"),"Clit","C󠀡lit"),"Cooch","C󠀡ooch"),"أC󠀡ocaine","أCo󠀡caine"),"Mierda","M󠀡ierda"),"Perra","P󠀡erra"),"Gilipollas","G󠀡ilipollas"),"Merde","M󠀡erde"),"Connard","C󠀡onnard"),"Coño","C󠀡oño"),"FUC","أFU󠀡C"),"SHIT","أSH󠀡IT"),"BITCH","أBI󠀡TCH"),"FAG","F󠀡AG"),"HITLER","HI󠀡TLER"),"أFU󠀡CKING","أFU󠀡CKINGأ"),"DI","D󠀡I"),"PUS","أPUS󠀡"),"ASSH","أAS󠀡SH"),"COC","أC󠀡OC"),"CUNT","أأCU󠀡NT"),"TIT","T󠀡IT"),"PEDO","P󠀡EDO"),"PENI","P󠀡ENI"),"VAGIN","V󠀡AGIN"),"D󠀡ICKH","أD󠀡ICKH"),"SPERM","أSP󠀡ERM"),"BULL","أBULL"),"DUM","أDUM"),"HORE","H󠀡ORE"),"SLUT","أSLU󠀡T"),"PORN","P󠀡ORN"),"SEX","أS󠀡EX"),"DYKE","DY󠀡KE"),"D󠀡IP","أDIP"),"NIG","أأN󠀡IG"),"RAP","أRA󠀡P"),"CUM","CU󠀡M"),"RAP","أRA󠀡P"),"KIK","KI󠀡K"),"JIZZ","JIZ󠀡Z"),"RETARDED","أRE󠀡TARDED"),"D󠀡ILDO","أD󠀡ILDO"),"BOOBIES","BO󠀡OBIES"),"NUDE","أأNU󠀡DE"),"BIATCH","BI󠀡ATCH"),"HENTAI","H󠀡ENTAI"),"TESTICL","T󠀡ESTICL"),"GENATALIA","G󠀡ENATALIA"),"BONER","B󠀡ONER"),"CLIT","C󠀡LIT"),"COOCH","C󠀡OOCH"),"BLOWJOB","B󠀡LOWJOB"),"أC󠀡OCAINE","أCO󠀡CAINE"),"PUBE","P󠀡UBE"),"MIERDA","M󠀡IERDA"),"PERRA","P󠀡ERRA"),"GILIPOLLAS","G󠀡ILIPOLLAS"),"MERDE","M󠀡ERDE"),"CONNARD","C󠀡ONNARD"),"COÑO","C󠀡OÑO"),"1"," 1 "),"2"," 2 "),"3"," 3 "),"4"," 4 "),"5"," 5 "),"6"," 6 "),"7"," 7 "),"8"," 8 "),"9"," 9 "),"0"," 0 "),"6 9","6 9أ"),"4 2 0","4 2 0أ")," ","أ").."أأ","All")
end
end
end)
ScreenGuix:Destroy()
local VersionGui = Instance.new("ScreenGui")
local Icon = Instance.new("ImageLabel")
local Version = Instance.new("TextLabel")
VersionGui.Name = "VersionGui"
VersionGui.Parent = game.CoreGui
VersionGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Icon.Name = "Icon"
Icon.Parent = VersionGui
Icon.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Icon.BorderColor3 = Color3.new(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(0, 0, 0.899999976, 0)
Icon.Size = UDim2.new(0.125, 0, 0.100000001, 0)
Icon.Image = "rbxassetid://3612668789"
Version.Name = "Version"
Version.Parent = VersionGui
Version.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Version.BorderColor3 = Color3.new(0, 0, 0)
Version.BorderSizePixel = 0
Version.Position = UDim2.new(0, 0, 0.875999987, 0)
Version.Size = UDim2.new(0.125, 0, 0.0250000004, 0)
Version.Font = Enum.Font.Code
Version.Text = "Version "..VersionString
Version.TextColor3 = Color3.new(0, 0, 0)
Version.TextSize = 14
Version.TextWrapped = true
game:GetService("RunService").Stepped:Connect(function()
for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller:GetChildren()) do
if v:IsA("Frame") then
if v.TextLabel.Text == "You can't use Emotes here." then
wait(math.random(4,6)/100)
v:Destroy()
else
end
end
end
end)
elseif game.Players.LocalPlayer:GetUnder13() == true then
game.StarterGui:SetCore("SendNotification", {
Title = "Notice";
Text = "Your account is under 13/safechat, so this script will not work. Please login with an account that is over 13.";
Duration = math.huge;
Button1 = "Okay";
})
end
end
end