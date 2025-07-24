local Workspace = game:GetService("Workspace") -- Mengambil layanan Workspace secara global
local colorPart = Workspace.ColorPart          -- Mengakses Part bernama "ColorPart" di dalam Workspace
colorPart.Color = Color3.fromRGB(50, 240, 255) -- Mengubah warna Part menjadi biru terang


local colorPart = script.Parent                 -- Mengambil objek induk dari Script ini
colorPart.Color = Color3.fromRGB(50, 240, 255) -- Mengubah warna induk Part secara langsung
