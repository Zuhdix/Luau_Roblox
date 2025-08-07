-- Script ini diletakkan di dalam Part (misalnya: pointPart)
-- Fungsinya adalah memberikan atau mengurangi poin kepada pemain yang menyentuh part ini
-- Warna part akan menentukan jumlah poin yang diberikan atau dikurangi

-- Mengambil referensi ke part tempat script ini berada
local pointPart = script.Parent

-- Mendefinisikan warna dengan nilai RGB
local blue = Color3.fromRGB(0, 0, 255)     -- Warna biru
local green = Color3.fromRGB(0, 255, 0)    -- Warna hijau
local red = Color3.fromRGB(255, 0, 0)      -- Warna merah

-- Nilai poin yang akan diberikan atau dikurangi berdasarkan warna
local smallPoints = 10   -- Untuk warna biru
local largePoints = 50   -- Untuk warna hijau
local losePoint = 100    -- Untuk warna merah (dikurangkan)

-- Mengambil service Players dari Roblox
local Players = game:GetService("Players")

-- Fungsi untuk memberikan atau mengurangi poin ke pemain
local function givePoints(player)
	-- Ambil warna saat ini dari part
	local currentColor = pointPart.Color
	
	-- Ambil data statistik pemain (leaderstats)
	local playerStats = player:WaitForChild("leaderstats")
	local playerPoints = playerStats:WaitForChild("Points")
	
	-- Cek warna part dan ubah nilai point sesuai warnanya
	if currentColor == blue then
		playerPoints.Value += smallPoints -- Tambah 10 poin
	elseif currentColor == green then
		playerPoints.Value += largePoints -- Tambah 50 poin
	else
		playerPoints.Value -= losePoint   -- Kurangi 100 poin
	end
	
	-- Hancurkan part setelah disentuh agar tidak bisa disentuh lagi
	pointPart:Destroy()
	
	-- Buat efek partikel sesuai warna part
	local particle = Instance.new("ParticleEmitter")
	particle.Color = ColorSequence.new(currentColor)
	
	-- Pasang partikel ke kepala pemain
	local playerCharacter = player.Character
	particle.Parent = playerCharacter:WaitForChild("Head")
	
	-- Hapus partikel setelah 1 detik
	task.wait(1)
	particle:Destroy()
end

-- Fungsi yang dipanggil saat ada objek menyentuh part
local function partTouched(otherPart)
	-- Cek apakah yang menyentuh adalah karakter pemain
	local player = Players:GetPlayerFromCharacter(otherPart.Parent)
	if player then
		-- Berikan poin kepada pemain
		givePoints(player)
	end
end

-- Hubungkan event sentuhan part ke fungsi partTouched
pointPart.Touched:Connect(partTouched)

-- Perulangan untuk mengubah warna part setiap beberapa detik
-- Warna berubah secara berurutan: biru → hijau → merah
while true do
	pointPart.Color = blue   -- Biru = 10 poin
	task.wait(3)             -- Tunggu 3 detik
	pointPart.Color = green  -- Hijau = 50 poin
	task.wait(2)             -- Tunggu 2 detik
	pointPart.Color = red    -- Merah = -100 poin
	task.wait(1)             -- Tunggu 1 detik
end
