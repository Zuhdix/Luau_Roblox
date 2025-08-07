-- Script ini diletakkan di ServerScriptService
-- Tujuannya adalah menyiapkan sistem leaderstats ketika pemain bergabung ke game

-- Mengambil service "Players" dari Roblox
local Players = game:GetService("Players")

-- Fungsi yang akan dijalankan setiap kali pemain masuk ke dalam game
local function onPlayerJoin(player)
	-- Membuat folder bernama "leaderstats" yang digunakan untuk menyimpan data statistik pemain
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats" -- Nama folder harus "leaderstats" agar terbaca di leaderboard
	leaderstats.Parent = player -- Menjadikan folder ini sebagai anak (child) dari player
	
	-- Membuat nilai statistik berupa angka (Integer) bernama "Points"
	local points = Instance.new("IntValue") -- Membuat nilai bertipe Int (angka)
	points.Name = "Points" -- Nama dari statistik ini adalah "Points"
	points.Value = 0 -- Nilai awal Points adalah 0
	points.Parent = leaderstats -- Menaruh Points di dalam folder leaderstats
end

-- Menghubungkan fungsi di atas agar otomatis berjalan saat pemain baru masuk
Players.PlayerAdded:Connect(onPlayerJoin)
