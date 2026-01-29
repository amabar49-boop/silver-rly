-- features.lua
-- Pastikan main.lua sudah membuat Window & MainTab
-- Contoh: local MainTab = Window:AddTab("Main")

local plr = game.Players.LocalPlayer

-- ===== Button: Boost Speed =====
MainTab:AddButton("Boost Speed", function()
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = 50
        print("Speed Boosted!")
    end
end)

-- ===== Toggle: Auto Farm =====
local AutoFarmActive = false
MainTab:AddToggle("Auto Farm", false, function(Value)
    AutoFarmActive = Value
    if Value then
        print("Auto Farm ON")
    else
        print("Auto Farm OFF")
    end
end)

-- Loop Auto Farm sederhana
game:GetService("RunService").Heartbeat:Connect(function()
    if AutoFarmActive then
        -- Ganti logika ini sesuai game kamu
        -- Contoh: klik tool, collect item, dsb
        print("Auto Farming aktif...")
        task.wait(1) -- optional delay
    end
end)

-- ===== Slider: Jump Power =====
MainTab:AddSlider("Jump Power", {
    Min = 50,
    Max = 250,
    Default = 50
}, function(Value)
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.JumpPower = Value
    end
end)

-- ===== Keybind: Toggle UI =====
MainTab:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function()
    Window:Toggle()
end)

-- ===== Button tambahan: Reset WalkSpeed =====
MainTab:AddButton("Reset Speed", function()
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = 16
        print("Speed reset ke default!")
    end
end)

-- ===== Button tambahan: Reset JumpPower =====
MainTab:AddButton("Reset Jump", function()
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.JumpPower = 50
        print("JumpPower reset ke default!")
    end
end)
