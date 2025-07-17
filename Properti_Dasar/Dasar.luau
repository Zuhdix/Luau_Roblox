-- Script akan berjalan setelah game dijalankan
-- Akses objek menggunakan hierarki: game > Workspace > [Objek]

local basePlate = game.Workspace.Baseplate

basePlate.Transparency = 0.25      -- Mengubah tingkat transparansi (0 - 1)
basePlate.Material = "Brick"       -- Mengubah material menjadi 'Brick'

local kotakPart1 = game.Workspace.kotak1

kotakPart1.BrickColor = BrickColor.new("Bright bluish green") -- Warna objek
kotakPart1.Material = "Glass"                                 -- Mengubah material

local kotakPart2 = game.Workspace.kotak2

kotakPart2.Reflectance = 0.2        -- Memberikan efek pantulan
kotakPart2.Material = "Rock"
kotakPart2.BrickColor = BrickColor.new("Dark red")
