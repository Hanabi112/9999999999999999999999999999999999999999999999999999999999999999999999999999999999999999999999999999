local PlaceId = game.PlaceId


if PlaceId == 2753915549 or PlaceId == 4442272183 or PlaceId == 7449423635 then
game.Players.LocalPlayer:kick("กูไม่ให้ใช้สคริปกับเกมนี้ครับไอโง่สถุน")
wait(1)
game:Shutdown()
end

wait(.1)
local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/N0Fee1/Ui-TableHub/main/Ui.lua"))()
local win = DiscordLib:Window("Blox Fruits")
local Ui = win:Server("Ability Hub","")
local Main = Ui:Channel("Main")
local Cr = Ui:Channel("Credit")

Main:Textbox("Message", "Please, Enter Message Spam",value, function(value)
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

Main:Textbox("Sound Id", "Pls Enter Soun Id", value, function(value)
    Music1 = value
end)

Main:Button("Copy Sound",function()
    setclipboard("rbxassetid://5284661236 -- SoundID")
end)

Main:Button("Rejoin",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

Cr:Button("Credit Hub Ui Table Hub",function()
setclipboard("discord.gg/tablehub")
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

Main:Textbox("Heat Fire", "Heat Fire( MAX1000 )", value, function(value)
    Heat = value
end)

Main:Textbox("Size Fire", "Size Fire( MAX1000 )", value, function(value)
    Size = value
end)

    Main:Textbox("Jump Power", "Speed Power( MAX1000 )", value, function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end)

   Main:Textbox("Speed Power", "Speed Power( MAX1000 )", value, function(value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed  = value
        while value do wait(1)
            game:GetService("Players").LocalPlayer.Character.Movement.Disabled = true
        end
    end)
