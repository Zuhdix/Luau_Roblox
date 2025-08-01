--[[
📄 Dokumentasi KillBrick Script
Deskripsi:
Script ini digunakan untuk membunuh karakter (dengan komponen Humanoid) saat menyentuh objek KillBrick.

🧱 Komponen:
- Part (KillBrick): Objek yang menyebabkan kematian saat disentuh.

🎯 Fitur:
- Deteksi sentuhan dengan objek lain (Touched Event).
- Cek apakah objek yang menyentuh memiliki Humanoid.
- Jika iya, atur nilai kesehatan (Health) ke 0.
]]

-- Menghubungkan script ke part induknya (KillBrick)
local killBrick = script.Parent

-- Membuat koneksi event Touched pada KillBrick
killBrick.Touched:Connect(function(otherPart)
	
	-- Mencoba mengambil Humanoid dari parent objek yang menyentuh
	local humanoid = otherPart.Parent:FindFirstChild("Humanoid")
	
	-- Jika Humanoid ditemukan, maka atur kesehatan ke 0 (karakter mati)
	if humanoid then
		humanoid.Health = 0
	end
end)
