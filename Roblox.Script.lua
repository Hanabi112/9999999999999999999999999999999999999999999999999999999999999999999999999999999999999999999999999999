local PlaceId = game.PlaceId


if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
game.Players.LocalPlayer:kick("กูไม่ให้ใช้สคริปกับเกมนี้ครับไอโง่สถุน")
wait(1)
game:Shutdown()
end

wait(.1)
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Copy-SynapOver.lua"))()
local GUI = library:new("","[ RightControl ]")
local Main = GUI:Tap("Mian")
local Cr = GUI:Tap("Credit")

Main:TextBox("Message",function(value)
    Say = value
end)

Main:Toggle("Auto Spam",nil,function(value)
spam = value

while wait(.0) do
if spam then
    local args = {
    [1] = Say,
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
end)


Main:Toggle("Auto Play Song",nil,function(value)
    game.workspace["MUSIC_FUNCTION1"].SoundId = Music1
    game.workspace["MUSIC_FUNCTION1"].Playing = value
end)
Instance.new("Sound", game:GetService("Workspace")).Name = "MUSIC_FUNCTION1"
Instance.new("Sound", game:GetService("Workspace")).Volume = 5
Instance.new("Sound", game:GetService("Workspace")).Looped = true

Main:TextBox("Soun Id",function(value)
    Music1 = value
end)

Cr:Button("Credit Hub Ui Star X Hub",function()
setclipboard("https://discord.gg/UweqRx6DRX")
end)

Main:Button("Go ku",function()
    spawn(function()
        pcall(function()
        local Fire = Instance.new("Fire")
        Fire.Parent = game.Players.LocalPlayer.Character.Head
        Fire.Heat = Heat
        Fire.Size = Size
        end)
    end)
end)

Main:TextBox("Heat Fire",function(value)
    Heat = value
end)

Main:TextBox("Size Fire",function(value)
    Size = value
end)
