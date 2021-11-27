while wait() do
    for i,v in pairs(game.Workspace:GetDescendants()) do
     if v:IsA("RemoteEvent") and v.Name == "S_SirenTrigger" then
           v:FireServer("Secondary_Siren", "Play")
        end
    end 
end
while wait() do
        for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("RemoteEvent") and v.Name == "Blaulicht" then
            v:FireServer()
       end
    end
end
