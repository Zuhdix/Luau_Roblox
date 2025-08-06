-- Variabel untuk menghitung waktu yang telah berlalu sejak race dimulai (dalam detik)
local timePassed = 0

-- Mengambil objek raceManager (biasanya berupa Part di Roblox) dari script.Parent
local raceManager = script.Parent

-- Mengatur warna dan material visual dari raceManager agar terlihat seperti garis finish
raceManager.BrickColor = BrickColor.new("Really red") -- Mengatur warna menjadi merah terang
raceManager.Material = Enum.Material.Neon -- Mengatur material menjadi Neon agar bersinar

-- Menyimpan status apakah race sedang berlangsung
local raceActive = true

-- Fungsi yang dijalankan saat pemain menyentuh garis finish
local function finish()
	print("Player finish") -- Menampilkan pesan bahwa pemain telah menyentuh garis finish
	raceActive = false -- Menghentikan race

	-- Menampilkan waktu saat pemain mencapai garis finish
	print("Kamu finish Di " .. timePassed)

	-- Menentukan peringkat berdasarkan waktu yang dibutuhkan
	if timePassed <= 10 then
		print("Posisi Gold") -- Cepat sekali!
	elseif timePassed > 10 and timePassed <= 15 then
		print("Posisi Silver") -- Masih cukup cepat
	elseif timePassed > 15 and timePassed <= 25 then
		print("Posisi Bronze") -- Lumayan
	else
		print("Pensiun aja cil") -- Terlalu lama, peringkat tidak masuk
	end
end

-- Fungsi yang dijalankan saat bagian dari karakter menyentuh raceManager
local function partTouched(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChildWhichIsA("Humanoid") -- Mengecek apakah yang menyentuh adalah pemain

	-- Hanya menjalankan finish() jika race masih aktif dan yang menyentuh adalah pemain
	if humanoid and raceActive == true then
		finish()
	end
end

-- Menghubungkan fungsi partTouched ke event saat raceManager disentuh
raceManager.Touched:Connect(partTouched)

-- Loop utama yang berjalan setiap 1 detik untuk menghitung waktu selama race berlangsung
while raceActive == true do
	task.wait(1) -- Menunggu 1 detik
	timePassed += 1 -- Menambahkan 1 detik ke waktu yang telah berlalu
	print(timePassed) -- Menampilkan waktu ke konsol
end

