-- Load Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/amabar49-boop/silver-rly/main/main.lua"))()

-- Create Window
local Window = Library:CreateWindow({
    Title = "SilverHub",
    Center = true,
    AutoShow = true
})

-- Create Tab
local MainTab = Window:AddTab("Main")

-- Button
MainTab:AddButton("Test Button", function()
    print("Button ditekan")
end)

-- Toggle
MainTab:AddToggle("Test Toggle", false, function(Value)
    print("Toggle:", Value)
end)

-- Slider
MainTab:AddSlider("WalkSpeed", {
    Min = 16,
    Max = 100,
    Default = 16
}, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)
