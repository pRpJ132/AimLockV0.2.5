loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Raw%20Main.lua"))()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("AIMLOCK", "RJTheme1")

local Tab1 = Window:NewTab("AIM LOCK")

local Tab2 = Window:NewTab("ESP")

local Section = Tab1:NewSection("Section")

local Section2 = Tab2:NewSection("Section")

local color = {255, 38, 0}
local OutColor = {255, 38, 0}
local FillTrans = 0.4
local OutTrans = 0.4

Section2:NewToggle("ESP", "ESP Players", function(state)
V = false
B = false

if state then
	V = true
	B = false
else
	V = false
	B = true
end

while (V) do
task.wait(0.1)                                                                                                                                    for i, Pl in ipairs(Workspace:GetDescendants()) do                                                                                    if Pl:FindFirstChild("Humanoid") then   
if Pl:FindFirstChild("Humanoid").Health > 1 then                                                                                                       if not Pl:FindFirstChild("Highlight") then                                                                                                         if Pl ~= game.Players.LocalPlayer.Character then                                                                                              local esp = Instance.new("Highlight", Pl)                                                                                   esp.Adornee = Pl   
esp.FillColor = Color3.fromRGB(color[1], color[2], color[3])   
esp.OutlineColor = Color3.fromRGB(OutColor[1], OutColor[2], OutColor[3])    
esp.FillTransparency = FillTrans  
esp.OutlineTransparency = OutTrans                                                                                                                                                                                                                                                                                                                                                                                                 esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop                                                                                                                                                                                                                                                                      end end end end end end

while (B) do
task.wait(0.1)                                                                                                                                    for i, Pl in ipairs(Workspace:GetDescendants()) do                                                                                    if Pl:FindFirstChild("Humanoid") then                                                                                                          if Pl:FindFirstChild("Highlight") then                                                                                                         if Pl ~= game.Players.LocalPlayer.Character then                                                                                              
Pl.Highlight:Destroy()                                                                                                                                                                                                                                                                                                                                                     end end end end end

end)

Section2:NewDropdown("ESP Color", "you can choose any other color", {"Black", "Blue", "Brown", "Cyan", "Green", "Magenta", "Orange", "Purple", "Red", "Yellow", "White"}, function(s)
	if s == "Black" then
		color = {0, 0, 0}
	elseif s == "Blue" then 
		color = {4, 51, 255}
	elseif s == "Brown" then 
		color = {170, 121, 66}
	elseif s == "Cyan" then 
		color = {0, 253, 255}
	elseif s == "Green" then 
		color = {0, 249, 0}
	elseif s == "Magenta" then
		color = {255, 64, 255}
	elseif s == "Orange" then
	        color = {255, 147, 0}
	elseif s == "Purple" then
		color = {148, 33, 146}
	elseif s == "Red" then
		color = {255, 38, 0}
	elseif s == "Yellow" then
		color = {255, 251, 0}
	elseif s == "White" then
		color = {255, 255, 255}
end
end)

Section2:NewDropdown("ESP OutLineColor", "players will be outlined in the color you choose", {"Black", "Blue", "Brown", "Cyan", "Green", "Magenta", "Orange", "Purple", "Red", "Yellow", "White"}, function(s)
	if s == "Black" then
		OutColor = {0, 0, 0}
	elseif s == "Blue" then 
		OutColor = {4, 51, 255}
	elseif s == "Brown" then 
		OutColor = {170, 121, 66}
	elseif s == "Cyan" then 
		OutColor = {0, 253, 255}
	elseif s == "Green" then 
		OutColor = {0, 249, 0}
	elseif s == "Magenta" then
		OutColor = {255, 64, 255}
	elseif s == "Orange" then
	        OutColor = {255, 147, 0}
	elseif s == "Purple" then
		OutColor = {148, 33, 146}
	elseif s == "Red" then
		OutColor = {255, 38, 0}
	elseif s == "Yellow" then
		OutColor = {255, 251, 0}
	elseif s == "White" then
		OutColor = {255, 255, 255}
end
end)

Section2:NewDropdown("ESP Transparency", "you can dress up ESP", {"0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"}, function(s)
	if s == "0.1" then
		FillTrans = 0.1
	elseif s == "0.2" then 
		FillTrans = 0.2
	elseif s == "0.3" then 
		FillTrans = 0.3
	elseif s == "0.4" then 
		FillTrans = 0.4
	elseif s == "0.5" then 
		FillTrans = 0.5
	elseif s == "0.6" then
		FillTrans = 0.6
	elseif s == "0.7" then
	        FillTrans = 0.7
	elseif s == "0.8" then
		FillTrans = 0.8
	elseif s == "0.9" then
		FillTrans = 0.9
	elseif s == "1" then
		FillTrans = 1
end
end)

Section2:NewDropdown("ESP OutlineTransparency", "you can adjust the player's outline by visibility", {"0.1", "0.2", "0.3", "0.4", "0.5", "0.6", "0.7", "0.8", "0.9", "1"}, function(s)
	if s == "0.1" then
		OutTrans = 0.1
	elseif s == "0.2" then 
		OutTrans = 0.2
	elseif s == "0.3" then 
		OutTrans = 0.3
	elseif s == "0.4" then 
		OutTrans = 0.4
	elseif s == "0.5" then 
		OutTrans = 0.5
	elseif s == "0.6" then
		OutTrans = 0.6
	elseif s == "0.7" then
	        OutTrans = 0.7
	elseif s == "0.8" then
		OutTrans = 0.8
	elseif s == "0.9" then
		OutTrans = 0.9
	elseif s == "1" then
		OutTrans = 1
end
end)

Section:NewSlider("FOV Radius", "FOV Radius", 500, 5, function(s)
	Aimbot.FOVSettings.Amount = s
end)

Section:NewDropdown("Sensitivity", "FOV Sensitivity", {"0", "0.05", "0.1", "0.15", "0.2", "0.25"}, function(s)
	if s == "0" then
		Aimbot.Settings.Sensitivity = 0
	elseif s == "0.05" then 
		Aimbot.Settings.Sensitivity = 0.05
	elseif s == "0.1" then 
		Aimbot.Settings.Sensitivity = 0.1
	elseif s == "0.15" then 
		Aimbot.Settings.Sensitivity = 0.15
	elseif s == "0.2" then 
		Aimbot.Settings.Sensitivity = 0.2
	elseif s == "0.25" then
		Aimbot.Settings.Sensitivity = 0.25
end
end)

Section:NewDropdown("Lock Part", "the cursor will always be directed to the desk you select", {"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Right Leg", "Left Leg", "LeftUpperArm", "RightUpperArm", "LeftUpperLeg", "RightUpperLeg", "LowerTorso"}, function(s)
	if s == "Head" then
		Aimbot.Settings.LockPart = "Head"
	elseif s == "HumanoidRootPart" then 
		Aimbot.Settings.LockPart = "HumanoidRootPart"
	elseif s == "Torso" then 
		Aimbot.Settings.LockPart = "Torso"
	elseif s == "Left Arm" then 
		Aimbot.Settings.LockPart = "Left Arm"
	elseif s == "Right Arm" then 
		Aimbot.Settings.LockPart = "Right Arm"
	elseif s == "Right Leg" then
		Aimbot.Settings.LockPart = "Right Leg"
	elseif s == "Left Leg" then
		Aimbot.Settings.LockPart = "Left Leg"
	elseif s == "LeftUpperArm" then
		Aimbot.Settings.LockPart = "LeftUpperArm"
	elseif s == "RightUpperArm" then
		Aimbot.Settings.LockPart = "RightUpperArm"
	elseif s == "LeftUpperLeg" then
		Aimbot.Settings.LockPart = "LeftUpperLeg"
	elseif s == "RightUpperLeg" then
		Aimbot.Settings.LockPart = "RightUpperLeg"
	elseif s == "LowerTorso" then
		Aimbot.Settings.LockPart = "LowerTorso"
end
end)

Section:NewTextBox("Keybind", "Keybind Aim", function(txt)
	Aimbot.Settings.TriggerKey = txt
end)

Section:NewTextBox("Transparency FOV", "Transparency FOV", function(txt)
	Aimbot.FOVSettings.Transparency = txt
end)

Section:NewToggle("Team check", "Aim does not work for his teammates", function(state)
if state then
	Aimbot.Settings.TeamCheck = true
else
	Aimbot.Settings.TeamCheck = false
end
end)

Section:NewToggle("Alive check", "Aim does not work if the player is dead", function(state)
if state then
	Aimbot.Settings.AliveCheck = false
else
	Aimbot.Settings.AliveCheck = true
end
end)

Section:NewToggle("Wall check", "Aim doesn't work through the wall", function(state)
if state then
	Aimbot.Settings.WallCheck = true
else
	Aimbot.Settings.WallCheck = false
end
end)
