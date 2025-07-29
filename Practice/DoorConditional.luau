-- Ambil SpawnLocation2 dari workspace, yang dijadikan sebagai tombol/titik pemicu
local button = game.Workspace.SpawnLocation2

-- Ambil objek pintu (door) dari parent script (misalnya part yang akan dihilangkan)
local door = script.Parent

-- Fungsi untuk buka pintu (hilangin pintu)
local function openDoor()
	print("door opened")              -- Muncul di output sebagai notifikasi
	door.Transparency = 1            -- Bikin pintu jadi transparan (hilang)
	door.CanCollide = false          -- Pintu jadi tembus alias bisa dilewati
end

-- Saat SpawnLocation2 disentuh, fungsi openDoor dipanggil
button.Touched:Connect(openDoor)

--[[ 
📌 Catatan Logika:
- Pintu ini posisinya deket tombol (door + button) yang jauh dari titik spawn utama.
- Jadi pemain harus teleport dulu ke lokasi SpawnLocation2 sebagai syarat untuk bisa membuka pintu.

🛑 Tapi...
- Kode teleportasi pemain ke SpawnLocation2 belum ditulis di sini.
- Script ini hanya bagian yang ngurus buka pintunya aja kalau titik itu disentuh.
]]
