-- ambil Library dari main.lua
local Library = getgenv().Library
if not Library then
    warn("Library belum keload")
    return
end

-- buat window utama
local Window = Library:CreateWindow({
    Title = "Silver RLY",
    Center = true,
    AutoShow = true
})

-- buat tab
local MainTab = Window:AddTab("Main")

-- === CONTOH BUTTON ===
MainTab:AddButton({
    Title = "Test Button",
    Callback = function()
        print("Button ditekan!")
    end
})

-- === CONTOH TOGGLE ===
MainTab:AddToggle({
    Title = "Test Toggle",
    Default = false,
    Callback = function(value)
        if value then
            print("Toggle ON")
        else
            print("Toggle OFF")
        end
    end
})

-- === CONTOH NOTIFY ===
MainTab:AddButton({
    Title = "Notify",
    Callback = function()
        Library:Notify({
            Title = "Silver RLY",
            Description = "Features.lua berhasil dimuat",
            Time = 3
        })
    end
})
