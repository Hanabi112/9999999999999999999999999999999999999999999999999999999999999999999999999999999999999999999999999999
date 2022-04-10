repeat wait()
    if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then

        if game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Visible == true then
            if _G.Team == "Pirate" then
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marine.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            else
                for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.MouseButton1Click)) do
                    v.Function()
                end
            end
        end
    end
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/Hanabi112/RainBowGui/main/.lua")()
local win = Flux:Window("Ability Hub", "All Map 🏍", nil, _G.Toggle)
local Main = win:Tab("Main","")

Main:Textbox("Message","", OKKK, function(OKKK)
    Say = OKKK
end)

Main:Toggle("Auto Spam","", false,function(value)
spam = value
end)

spawn(function()
    while wait() do
        if spam then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Say,"All")
        end
    end
end)

Main:Toggle("Max Zoom","", false, function(vu)
    MaxZoom = vu
end)

--[[Main:Toggle("Auto Play Song","",nil,function(value)
    game.workspace["MUSIC_FUNCTION1"].SoundId = Music2
    game.workspace["MUSIC_FUNCTION1"].Playing = value
end)
Instance.new("Sound", game:GetService("Workspace")).Name = "MUSIC_FUNCTION1"
Instance.new("Sound", game:GetService("Workspace")).Volume = 5
Instance.new("Sound", game:GetService("Workspace")).Looped = true

Main:Textbox("Sound Id","Pls Enter Soun Id", value, function(value)
    Music2 = ("rbxassetid://"..value)
end)

Main:Button("Copy Sound","",function()
    setclipboard("5284661236 -- SoundId")
end)]]

--[[Cr:Button("Credit Hub Ui Table Hub","",function()
setclipboard("discord.gg/tablehub")
end)]]

Main:Button("Go ku","",function()
    spawn(function()
        pcall(function()
        local Fire = Instance.new("Fire")
        Fire.Parent = game.Players.LocalPlayer.Character.Head
        Fire.Heat = Heat
        Fire.Size = Size
        end)
    end)
end)

Main:Textbox("Heat Fire", "Heat Fire( MAX1000 )",value, function(value)
    Heat = value
end)

Main:Textbox("Size Fire", "Size Fire( MAX1000 )",value, function(value)
    Size = value
end)

    Main:Textbox("Jump Power", "Speed Power( MAX1000 )",value, function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end)

   Main:Textbox("Speed Power", "Speed Power( MAX1000 )",value, function(value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed  = value
        while value do wait(1)
            game:GetService("Players").LocalPlayer.Character.Movement.Disabled = true
        end
    end)
Main:Button("Game Shutdown","", function()
    game:Shutdown()
end)
  Main:Button("Server Hop","", function()
        Teleport()
    end)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                end
            end
        end
    end
    function Teleport() 
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
Main:Button("Rejoin","",function()
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end)

spawn(function()
    while wait(.1) do
        if MaxZoom then
            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 999999999999999999999999999999999999
        else
            game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 200
        end
    end
end)
until game.CoreGui:FindFirstChild("FluxLib") game:IsLoaded()
