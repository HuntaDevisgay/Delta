local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

local UI = GUI:CreateWindow("Prision Life 3 kill gui","made by huntadev#0001")

local Home = UI:addPage("Home",1,true,6)

local PLIST = {}

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    table.insert(PLIST,v.DisplayName)
end

Home:addDropdown("Kill Player",PLIST,4,function(value)
local A_1 = game:GetService("Workspace")[value].Humanoid
local A_2 = 101
local A_3 = false
local Event = game:GetService("ReplicatedStorage").GunRemotes.TakeDamage
Event:FireServer(A_1, A_2, A_3)
end)

-- huntadev
