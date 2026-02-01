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
