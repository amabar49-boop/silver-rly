-- ambil Library dari main.lua
local Library = getgenv().Library
if not Library then return end

-- window
local Window = Library:CreateWindow({
    Title = "SilverRly",
    Center = true,
    AutoShow = true
})

-- TAB MAIN (INI YANG KAMU LIHAT DI GAMBAR)
local Main = Window:AddTab("Main")

-- =========================
-- ISI MENU DI TAB MAIN
-- =========================

-- BUTTON 1
Main:AddButton({
    Title = "Hello",
    Callback = function()
        print("Hello ditekan")
    end
})

-- BUTTON 2
Main:AddButton({
    Title = "Notify Test",
    Callback = function()
        Library:Notify({
            Title = "SilverRly",
            Description = "Menu Main berhasil diisi",
            Time = 3
        })
    end
})

-- TOGGLE
Main:AddToggle({
    Title = "Toggle Test",
    Default = false,
    Callback = function(v)
        print("Toggle:", v)
    end
})
