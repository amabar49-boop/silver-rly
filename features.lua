local Library = getgenv().Library
if not Library then return end

local Window = Library:CreateWindow({
    Title = "SilverRly",
    Center = true,
    AutoShow = true
})

local MainTab = Window:AddTab("Main")

-- ❗ WAJIB ADA SECTION
local MainSection = MainTab:AddSection("Main Menu")

-- BUTTON
MainSection:AddButton({
    Title = "Test Button",
    Callback = function()
        print("Button clicked")
    end
})

-- TOGGLE
MainSection:AddToggle({
    Title = "Test Toggle",
    Default = false,
    Callback = function(v)
        print("Toggle:", v)
    end
})
