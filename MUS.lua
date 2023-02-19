local Config = {
    WindowName = "MUSPlayer | v2.03",
	Color = Color3.fromRGB(255,215,0),
	Keybind = Enum.KeyCode.RightControl
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("MP3 Player")
local Filename = "";
local FilenameOGG = "";

-- ## START TAB 1

local Section1 = Tab1:CreateSection("MP3")
local Section2 = Tab1:CreateSection("OGG")
local Section3 = Tab1:CreateSection("Credits")

local textbox = Section1:CreateTextBox("Filename", "mp3 filename", false, function(String)
    Filename = "musplayer\\" .. String .. ".mp3"
end)

local Play = Section1:CreateButton("Play", function()
    if not game.SoundService:FindFirstChild("SoundPlayer") then
        local sound = Instance.new("Sound")
        sound.Name = "SoundPlayer"
        sound.SoundId = getcustomasset(Filename)
        sound.Looped = false
        sound.Parent = game.SoundService
        sound:Play()
    end
end)
Play:AddToolTip("Plays the song applied.")

local RemoveSong = Section1:CreateButton("Remove Song", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        local sound = game.SoundService.SoundPlayer
        sound.SoundId = ""
        sound:Stop()
        sound:Destroy()
    end
end)
RemoveSong:AddToolTip("Removes the song applied to the variable")


local Volume = Section1:CreateSlider("Volume", 0,100,nil,true, function(t)
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer.Volume = t / 10
    end
end)

local Pause = Section1:CreateButton("Pause", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer:Pause()
    end
end)

local Resume = Section1:CreateButton("Resume", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer:Resume()
    end
end)

-- ## OGG TThings

local textbox2 = Section2:CreateTextBox("Filename", "ogg filename", false, function(String)
    Filename = "musplayer\\" .. String .. ".ogg"
end)

local Play2 = Section2:CreateButton("Play", function()
    if not game.SoundService:FindFirstChild("SoundPlayer") then
        local sound = Instance.new("Sound")
        sound.Name = "SoundPlayer"
        sound.SoundId = getcustomasset(FilenameOGG)
        sound.Looped = false
        sound.Parent = game.SoundService
        sound:Play()
    end
end)
Play2:AddToolTip("Plays the song applied.")

local RemoveSong2 = Section2:CreateButton("Remove Song", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        local sound = game.SoundService.SoundPlayer
        sound.SoundId = ""
        sound:Stop()
        sound:Destroy()
    end
end)
RemoveSong2:AddToolTip("Removes the song applied to the variable")


local Volume2 = Section2:CreateSlider("Volume", 0,100,nil,true, function(t)
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer.Volume = t / 10
    end
end)

local Pause2 = Section2:CreateButton("Pause", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer:Pause()
    end
end)

local Resume2 = Section2:CreateButton("Resume", function()
    if game.SoundService:FindFirstChild("SoundPlayer") then
        game.SoundService.SoundPlayer:Resume()
    end
end)

-- ## Credits


Section3:CreateLabel("Made by psvks")
Section3:CreateLabel("A fucking awesome MP3 and OGG player. \nYou can now play mp3 and ogg sounds thru \nroblox clientsided!")
