-- Pastikan main.lua sudah punya:
-- local MainTab = Window:AddTab("Main")

-- Fitur 1: Button Boost Speed
MainTab:AddButton("Boost Speed", function()
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = 50
        print("Speed Boosted!")
    end
end)

-- Fitur 2: Toggle Auto Farm
local AutoFarmActive = false
MainTab:AddToggle("Auto Farm", false, function(Value)
    AutoFarmActive = Value
    if Value then
        print("Auto Farm ON")
    else
        print("Auto Farm OFF")
    end
end)

-- Fitur 3: Slider Jump Power
MainTab:AddSlider("Jump Power", {
    Min = 50,
    Max = 250,
    Default = 50
}, function(Value)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.JumpPower = Value
    end
end)

-- Fitur 4: Keybind Toggle UI
MainTab:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function()
    Window:Toggle()
end)
