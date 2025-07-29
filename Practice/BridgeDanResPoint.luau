-- Ambil objek tombol dari parent script
local button = script.Parent

-- Ambil objek jembatan di workspace
local bridge = workspace.Bridge

-- Fungsi buat ngidupin/aktifin jembatan
local function activateBridge()
	print("button touched")  -- Info ke output kalau tombol disentuh
	button.Color = Color3.fromRGB(14, 255, 22)  -- Ganti warna tombol jadi hijau
	bridge.Transparency = 0        -- Jembatan kelihatan
	bridge.CanCollide = true       -- Bisa diinjak/dilewati
end

-- Saat tombol disentuh, panggil fungsi activateBridge
button.Touched:Connect(activateBridge)

-- Ambil titik respawn (SpawnLocation2) dari workspace
local respawnPoint = game.Workspace.SpawnLocation2

-- Fungsi buat nonaktifin jembatan (seolah reset)
local function nonactiv()
	respawnPoint = button  -- Nggak ngaruh ke event, cuma assignment biasa
	bridge.Transparency = 1        -- Jembatan hilang dari pandangan
	bridge.CanCollide = false      -- Nggak bisa dilewatin (tembus)
end

-- Saat pemain nyentuh respawn point, jembatan otomatis ngilang
respawnPoint.Touched:Connect(nonactiv)
