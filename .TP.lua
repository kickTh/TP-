
if game.PlaceId == 2753915549 or 4442272183 or 7449423635 then
end
repeat wait() until game.Players.LocalPlayer

game.StarterGui:SetCore("SendNotification", {
Title = "SOME X HUB";
Text = "Play...";
Icon = "http://www.roblox.com/asset/?id=6031075938";
Duration = 5;
})



for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Lava" then   
            v:Destroy()
        end
    end
    for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
        if v.Name == "Lava" then   
            v:Destroy()
        end
end

    
  
wait(1.5)

getgenv().second = 30
_G.Chest3 = true
_G.Chest2 = true
_G.Chest1 = true
_G.AutoSetSpawn = true
_G.Water = true
_G.AutoDie = true
_G.AutoRj = true
_G.AutoPirates = true
_G.AutoMarines = true

spawn(function()
    while wait(second) do
    if _G.AutoRj then
	pcall(function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)
end
end
end)



game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
 if child.Name == "ErrorPrompt" then

local HttpService, TPService = game:GetService"HttpService", game:GetService"TeleportService";
local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
for Index, Server in next, OtherServers["data"] do
   if Server ~= game.JobId then
       print(Server["id"])
       TPService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer, Server["id"])
       break
   end
end

game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)    
end
end)





spawn(function()
	while wait() do
       pcall(function()
	        for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
                if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
                   v:Destroy() 
end
end
end)
end
end)


local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)



spawn(function()
    while wait(4) do
    if _G.AutoPirates then
	pcall(function()
	local args = {
        [1] = "SetTeam",
        [2] = "Pirates"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)) 
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
end
end
end)


spawn(function()
    while wait(4) do
    if _G.AutoMarines then
	pcall(function()
	local args = {
        [1] = "SetTeam",
        [2] = "Marines"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "BartiloQuestProgress"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
end
end
end)




    
    


    spawn(function()
    while wait(3.9) do
    if _G.AutoDie then
	pcall(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = die
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
	
end)
end
end
end)






spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
         if _G.Chest3 or _G.Chest2 or _G.Chest1 then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 0.8
                LOL.Size = Vector3.new(10,0.5,10)
                LOL.Material = "Neon"
                 
          elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y - 3,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
          end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)


spawn(function()
    pcall(function()
        while game:GetService("RunService").Heartbeat:wait() do
       if _G.Chest3 or _G.Chest2 or _G.Chest1 then
       if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
                    if not game:GetService("Workspace"):FindFirstChild("Water") then
                        local Water = Instance.new("Part", game.Workspace)
                        Water.Name = "Water"
                        Water.Size = Vector3.new(10,0.5,10)
                        Water.Transparency = 0.8
                        Water.Anchored = true
                        
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        game:GetService("Workspace").Water.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            else
                if game:GetService("Workspace"):FindFirstChild("Water") then
                    game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
                end
            end
        end
    end)
end)




spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
         if _G.Chest3 or _G.Chest2 or _G.Chest1 then
          for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end)
end)



pcall(function()
	for i,v in pairs(game:GetService("Workspace").Map.Dressrosa.Tavern:GetDescendants()) do
		if v.ClassName == "Seat" then
			v:Destroy()
		end
	end
end)






    spawn(function()
    while wait() do
    if _G.AutoSetSpawn then
    game:GetService("RunService").RenderStepped:Connect(function()
	pcall(function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
	game.Players.LocalPlayer.Character.Shirt:Destroy()
game.Players.LocalPlayer.Character.Pants:Destroy()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.Animate.Disabled = true
setfflag("HumanoidParallelRemoveNoPhysics", "False")
setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
for i,go in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if go.ClassName == "Accessory" then
        go:Destroy()
    end
end
	end)
	end)
	end
    end
    end)


    



spawn(function()
    while wait() do
    if _G.Chest3 then
	pcall(function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest3" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.5)
end
end
end)
end
end
end)
 

spawn(function()
    while wait() do
    if _G.Chest2 then
	pcall(function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest2" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.5)
end
end
end)
end
end
end)
 
 




spawn(function()
    while wait() do
    if _G.Chest1 then
	pcall(function()
for i,v in pairs(game:GetDescendants()) do
if v.Name == "TouchInterest"  and v.Parent.Name == "Chest1" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.CFrame
wait(0.5)
end
end
end)
end
end
end)
 
