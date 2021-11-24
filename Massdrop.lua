local virtualUser = game:GetService('VirtualUser')
local plr = game.Players.LocalPlayer

local char = plr.Character
local h = char.Humanoid
h:UnequipTools()

local function dropallTools()
    virtualUser:CaptureController()
    wait()
    virtualUser:SetKeyDown('0x08')
    wait()
    virtualUser:SetKeyUp('0x08')
end

for i,v in pairs(plr.Backpack:GetChildren()) do
    if v:IsA("Tool") and v.Name == "Boombox" or "boombox" then
        v.Parent = plr.Character
        wait(.1)
        dropallTools()
    end
end
