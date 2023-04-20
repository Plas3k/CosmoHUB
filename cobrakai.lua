-- BuildPart
local BuildPart = Instance.new("Part",game.Workspace) --Directory of The Part
BuildPart.Size = Vector3.new(50,50,50) 	              --The Size of the Part
BuildPart.Position = Vector3.new(49254.89453125, 36581.125, -37263.4765625)      --The Position of The Part
BuildPart.Anchored = true
-- Ray Lib
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
-- Main
local Window = Rayfield:CreateWindow({
	Name = "Cosmo HUB",
	LoadingTitle = "Cosmo HUB",
	LoadingSubtitle = "Made by: Plasek",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "CosmoHUB"
        },
})
Rayfield:Notify({
    Title = "Game: Cobra Kai Karate",
    Content = "This game is supported",
    Duration = 1,
    Image = 4688175775,
    Actions = { -- Notification Buttons
        Ignore = {
            Name = "Dismiss",
            Callback = function()
            end
		},
	},
})
-- Values:
_G.Sit = true
_G.Push = true
_G.Punch = true
-- Function | Sit:
function Sit()
while _G.Sit == true do
    wait()
game:GetService("ReplicatedStorage").Remotes.SitUp:FireServer()

  end
end
-- Function | Push:
function Push()
while _G.Push == true do
    wait()
game:GetService("ReplicatedStorage").Remotes.PushUp:FireServer()

  end
end
-- Function | Punch:
function Punch()
while _G.Punch == true do
  wait()
  Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49256.1640625, 36608.8125, -37265.50390625)
game:GetService("Workspace").PunchingBag.Bag.CFrame = CFrame.new(49255.9453125, 36608.8125, -37267.84375)
wait()
game:GetService('VirtualInputManager'):SendKeyEvent(true,'E',false,uwu)
end
 end
-- Home | Tab:
local Home = Window:CreateTab("Home") -- Title, Image
-- Home | Anti Afk:
local Afk = Home:CreateButton({
	Name = "Anti Afk",
	Callback = function()
		local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
	end,
})
-- Home | Copy:
local Copy = Home:CreateButton({
	Name = "Copy DarianDev Discord Server",
	Callback = function()
		setclipboard("https://discord.gg/ZUTMCfZp4x")
	end,
})
-- Home | Text:
local Home1 = Home:CreateLabel("Version: 0.1")
local Home2 = Home:CreateLabel("Made by: Plasek")
local Home3 = Home:CreateLabel("Disable Shift Lock to hide GUI, idk how to change it ;-;")
local Home4 = Home:CreateLabel("Obsfucate by: DarianDev")
local Home5 = Home:CreateLabel("Maybe i add more things")
local Home6 = Home:CreateLabel("UI: Rayfield")
-- Changelog | Tab:
local Changelog = Window:CreateTab("Changelogs")
-- Changelog | Labels:
local Change1 = Changelog:CreateLabel("Nothing New")
-- Farm | Tab:
local Farm = Window:CreateTab("Farm")
-- Farm | Label:
local Label = Farm:CreateLabel("This was made 1 year ago, maybe doesnt work")
-- Farm | Toggle:
local Toggle = Farm:CreateToggle({
	Name = "Auto PunchBag",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.Punch = Value
		Punch()
	end,
})
-- Farm | Toggle1:
local Toggle = Farm:CreateToggle({
	Name = "Auto Sits Up",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.Sit = Value
		Sit()
	end,
})
-- Farm | Toggle2:
local Toggle = Farm:CreateToggle({
	Name = "Auto Push Up",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.Push = Value
		Push()
	end,
})
-- Teleport | Tab:
local Tele = Window:CreateTab("Teleports")
-- Teleport | Gym:
local Button = Tele:CreateButton({
	Name = "Gym",
	Callback = function()
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.74974060058594, 3.3999991416931152, 71.1995620727539)
	end,
})
-- Teleport | Cobra Kai Dojo:
local Button = Tele:CreateButton({
	Name = "Cobra Kai Dojo",
	Callback = function()
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(33.70125198364258, 3.260128974914551, 42.31161880493164)
	end,
})
-- Teleport | Shop:
local Button = Tele:CreateButton({
	Name = "Shop",
	Callback = function()
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69.53749084472656, 2.8999991416931152, 152.979248046875)
	end,
})
-- Teleport | Miyagi Do Dojo:
local Button = Tele:CreateButton({
	Name = "Miyagi Do Dojo",
	Callback = function()
Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.761905670166016, 2.700000286102295, -1067.3128662109375)
	end,
})
