-- Tunggu game siap
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

-- Load VinzHub Library
local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://script.vinzhub.com/library"))()
end)

if not success or not Library then
    warn("Gagal load library!")
    return
end

-- Buat Window
local Window = Library:CreateWindow({
    Title = "SilverRly",
    Center = true,
    AutoShow = true -- harus true supaya muncul
})

-- Buat Tab Main
local MainTab = Window:AddTab("Main")
dofile("features.lua")

-- ===== Contoh Button =====
MainTab:AddButton("Test Button", function()
    print("Button ditekan!")
end)

-- ===== Contoh Toggle =====
MainTab:AddToggle("Test Toggle", false, function(Value)
    print("Toggle:", Value)
end)

-- ===== Contoh Slider =====
MainTab:AddSlider("WalkSpeed", {
    Min = 16,
    Max = 100,
    Default = 16
}, function(Value)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = Value
    end
end)

-- ===== Contoh Keybind =====
MainTab:AddKeybind("Toggle UI", Enum.KeyCode.RightShift, function()
    Window:Toggle()
end)

-- ===== Tab Extra / Fitur Tambahan =====
local ExtraTab = Window:AddTab("Extra")

-- Toggle Auto Farm
ExtraTab:AddToggle("Auto Farm", false, function(Value)
    if Value then
        print("Auto Farm ON")
        -- logika auto farm di sini
        -- contoh: spawn loop simple
        ExtraTab.AutoFarmLoop = task.spawn(function()
            while Value do
                -- contohnya klik tool / farm
                print("Auto Farming...")
                task.wait(1)
            end
        end)
    else
        print("Auto Farm OFF")
        if ExtraTab.AutoFarmLoop then
            task.cancel(ExtraTab.AutoFarmLoop)
        end
    end
end)

-- Slider Jump Power
ExtraTab:AddSlider("Jump Power", {
    Min = 50,
    Max = 250,
    Default = 50
}, function(Value)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.JumpPower = Value
    end
end)

-- Button Boost Speed
ExtraTab:AddButton("Boost Speed", function()
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = 50
        print("Speed Boosted!")
    end
end)

-- Keybind Toggle Extra UI
ExtraTab:AddKeybind("Toggle UI", Enum.KeyCode.RightControl, function()
    Window:Toggle()
end)

-- Drag Support (Android friendly)
if Window.SetDraggable then
    Window:SetDraggable(true)
end

print("SilverHub UI siap digunakan dengan fitur tambahan!")

-- Buat Tab Main
local MainTab = Window:AddTab("main")
dofile("features.lua")

-- ===== Contoh Button =====
MainTab:AddButton("Test Button", function()
    print("Button ditekan!")
end)

-- ===== Contoh Toggle =====
MainTab:AddToggle("Test Toggle", false, function(Value)
    print("Toggle:", Value)
end)

-- ===== Contoh Slider =====
MainTab:AddSlider("WalkSpeed", {
    Min = 16,
    Max = 100,
    Default = 16
}, function(Value)
    local plr = game.Players.LocalPlayer
    if plr.Character and plr.Character:FindFirstChild("Humanoid") then
        plr.Character.Humanoid.WalkSpeed = Value
    end
end)
