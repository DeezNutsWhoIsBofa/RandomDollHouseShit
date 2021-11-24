local targetpart = game.Players.LocalPlayer.Character["Left Leg"] -- set this to the part you want to touch boombox wiht

getgenv().Grabber = false
while task.wait() do
    if getgenv().Grabber == true then
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Tool") and v.Parent == game.Workspace then
                if v:FindFirstChild("Handle") then
                    if v.Handle:FindFirstChild("TouchInterest") then
                        if targetpart then
                        firetouchinterest(v.Handle, targetpart, 0)
                        firetouchinterest(v.Handle, targetpart, 1)
                        end
                    end
                end
            end
        end
    end
end
