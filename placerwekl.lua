local function Place(item)
local args = {
    [1] = item,
    [2] = CFrame.new(game:GetService("Players").LocalPlayer.Character.Head.Position)
}

game:GetService("ReplicatedStorage").Remotes.Place:FireServer(unpack(args))
end

local function Remove(item)
workspace.Platziert[game:GetService("Players").LocalPlayer.Name][item].BasePart.InteractionEvent:FireServer()
end

while wait() do
    pcall(function()
    Place("Barriere")
    Place("Triopan")
    Place("Leitkegel")
    Place("Leitkegel2")
    wait(0.1)
    Remove("Barriere")
    Remove("Triopan")
    Remove("Leitkegel")
    Remove("Leitkegel2")
    end)
end
