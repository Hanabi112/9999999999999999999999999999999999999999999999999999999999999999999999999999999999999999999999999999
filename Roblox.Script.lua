local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Copy-SynapOver.lua"))()
local GUI = library:new("","[ RightControl ]")
local Main = GUI:Tap("Main")

Main:Button("Goku",function()
    local Fire = Instance.new("Fire")
    Fire.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    Fire.Heat = 50
    Fire.Size = 50
end)

Main:Line()

Main:Button("Destroy Left UpperLeg",function()
game.Players.LocalPlayer.Character.LeftUpperLeg:Destroy()
end)

Main:Button("Destroy Right UpperLeg",function()
game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
end)

Main:Line()

Main:Button("Destroy Right Foot",function()
game.Players.LocalPlayer.Character.RightFoot:Destroy()
end)

Main:Button("Destroy Left Foot",function()
game.Players.LocalPlayer.Character.LeftFoot:Destroy()
end)

Main:Line()

Main:Button("Destroy Right Hand",function()
game.Players.LocalPlayer.Character.RightHand:Destroy()
end)

Main:Button("Destroy Left Hand",function()
game.Players.LocalPlayer.Character.LeftHand:Destroy()
end)

Main:Line()

Main:Button("Destroy Left UpperArm",function()
game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
end)

Main:Button("Destroy Right UpperArm",function()
game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
end)

Main:Line()

local Lazy = GUI:Tap("Lazy")

Lazy:Button("Reset Character",function()
game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy()
end)

local O = GUI:Tap("Others")

O:Toggle("Ui By Synap 9Mill🖤🥀#9999",nil,function(value)
Auto = value
    while wait(.1) do
        if Auto then
            print('Ui By Synap 9Mill🖤🥀#9999')
        end
    end
end)
