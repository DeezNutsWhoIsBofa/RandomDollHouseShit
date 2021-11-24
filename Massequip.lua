local plr = game.Players.LocalPlayer
local char = plr.Character

local id1 = 1847685252 -- put your audio id here


local function fireRemote(tool, id)
local args = {
    [1] = "PlaySong",
    [2] = id
}

tool:FindFirstChild("Remote"):FireServer(unpack(args))
end

for i,v in (plr.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Boombox" or "boombox" then
        if char then
            if char:FindFirstChild("Humanoid") then
                char.Humanoid:UnequipTools()
                wait(.2)
                v.Parent = char
                wait(.2)
                fireRemote(v, id)
            end
        end
    end
end
