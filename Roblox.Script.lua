local PlaceId = game.PlaceId

if PlaceId == 2753915549then
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

while wait(.1) do
if spam then
    local args = {
    [1] = Say,
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end
end
end)

Cr:Button("Credit Ui Synap1_x🖤🥀#9999",function()
    setclipboard("Synap1_x🖤🥀#9999")
end)

Cr:Button("Credit Hub Ui Star X Hub",function()
setclipboard("https://discord.gg/UweqRx6DRX")
end)
