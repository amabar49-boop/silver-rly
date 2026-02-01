local Library = getgenv().Library
if not Library then return end

-- WINDOW
local Window = Library:CreateWindow({
    Title = "SilverRly",
    Center = true,
    AutoShow = true
})

-- TAB UTAMA
local MainTab = Window:AddTab("Main")

-- ======================
-- SECTION 1 DI MAIN
-- ======================
local FarmSection = MainTab:AddSection("Farm Menu")

FarmSection:AddButton({
    Title = "Auto Farm (Test)",
    Callback = function()
        print("Auto Farm ON")
    end
})

FarmSection:AddToggle({
    Title = "Auto AFK",
    Default = false,
    Callback = function(v)
        print("AFK:", v)
    end
})

-- ======================
-- SECTION 2 DI MAIN
-- ======================
local PlayerSection = MainTab:AddSection("Player Menu")

PlayerSection:AddButton({
    Title = "Speed x2",
    Callback = function()
        print("Speed ditekan")
    end
})

local Library = getgenv().Library
if not Library then return end

-- WINDOW
local Window = Library:CreateWindow({
    Title = "SilverRly",
    Center = true,
    AutoShow = true
})

-- TAB MAIN
local MainTab = Window:AddTab("Main")

-- SECTION PLAYER
local PlayerSection = MainTab:AddSection("Player Menu")

-- ambil player & humanoid (aman)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function getHumanoid()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return char:WaitForChild("Humanoid")
end

-- BUTTON: SPEED 16 (DEFAULT)
PlayerSection:AddButton({
    Title = "Reset Speed (16)",
    Callback = function()
        getHumanoid().WalkSpeed = 16
    end
})

-- BUTTON: SPEED 50
PlayerSection:AddButton({
    Title = "Speed 50",
    Callback = function()
        getHumanoid().WalkSpeed = 50
    end
})

-- TOGGLE: SPEED 100
local speedToggle = false
PlayerSection:AddToggle({
    Title = "Speed 100",
    Default = false,
    Callback = function(v)
        speedToggle = v
        if v then
            getHumanoid().WalkSpeed = 100
        else
            getHumanoid().WalkSpeed = 16
        end
    end
})

-- BUTTON: JUMP 100
PlayerSection:AddButton({
    Title = "Jump 100",
    Callback = function()
        getHumanoid().JumpPower = 100
    end
})

-- BUTTON: RESET JUMP
PlayerSection:AddButton({
    Title = "Reset Jump",
    Callback = function()
        getHumanoid().JumpPower = 50
    end
})
