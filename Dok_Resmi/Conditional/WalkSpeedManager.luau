-- Mengambil objek speedBoost yang merupakan parent dari script ini (misalnya sebuah part di Workspace)
local speedBoost = script.Parent

-- Fungsi yang akan dijalankan saat objek disentuh
local function onTouched(otherPart)
	-- Mencari karakter yang menyentuh objek
	local character = otherPart.Parent
	-- Mencari objek Humanoid di dalam karakter (untuk memastikan itu adalah pemain atau NPC)
	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	
	-- Jika ada Humanoid dan kecepatan jalannya masih di bawah atau sama dengan 50
	if humanoid and humanoid.WalkSpeed <= 50 then
		-- Tambahkan kecepatan jalan sebanyak 10 poin
		humanoid.WalkSpeed += 10

		-- Matikan kemampuan disentuh sementara agar tidak bisa disentuh berkali-kali dengan cepat
		speedBoost.CanTouch = false

		-- Tunggu 1 detik agar efek tidak langsung bisa dipakai lagi
		task.wait(1)
		-- Nyalakan kembali agar bisa disentuh
		speedBoost.CanTouch = true
		-- Tunggu lagi 1 detik, memberi waktu jeda agar tidak disentuh langsung dua kali
		task.wait(1)
		-- Matikan lagi kemampuan disentuh agar tidak bisa digunakan terus-menerus
		speedBoost.CanTouch = false
	end
end

-- Menghubungkan fungsi onTouched dengan event saat objek disentuh
speedBoost.Touched:Connect(onTouched)
