--[[
  SISTEM DETEKSI SENTUHAN PART DI ROBLOX
  Script ini mendemonstrasikan cara membuat mekanisme cooldown sederhana
  untuk menghindari pemrosesan berulang saat part disentuh secara cepat.
  
  Konsep Utama:
  1. Event Handling: Merespon event Touched pada part
  2. State Management: Menggunakan flag boolean untuk status "sedang diproses"
  3. Cooldown System: Menggunakan task.wait() untuk jeda waktu
  
  Best Practices:
  - Selalu gunakan variabel lokal untuk referensi objek
  - Hindari pemrosesan berulang selama cooldown
  - Gunakan task.wait() daripada wait() untuk akurasi waktu
--]]

-- Mendapatkan referensi ke part di Workspace
local touchPart = game.Workspace.TouchPart

--[[
  VARIABLE STATUS SENTUHAN
  Flag boolean untuk melacak status sentuhan:
  - false: part siap menerima sentuhan baru
  - true: part sedang dalam proses cooldown
  Mencegah eksekusi ganda saat sentuhan beruntun
--]]
local partIsTouched = false

--[[
  EVENT HANDLER UNTUK TOUCHED
  Mendaftarkan fungsi callback yang akan dieksekusi
  ketika part disentuh oleh objek fisik apapun
--]]
touchPart.Touched:Connect(function(otherPart)
	-- Cek apakah part sedang tidak dalam status cooldown
	if not partIsTouched then
		-- Set status menjadi "sedang diproses"
		partIsTouched = true
		
		--[[ 
		  IDENTIFIKASI OBJEK PENYENTUH
		  otherPart adalah objek BasePart yang menyentuh
		  - Name: nama objek penyentuh
		  - Parent: model/player yang memiliki part
		--]]
		print(`Objek penyentuh: {otherPart.Name}`)
		print(`Dari instansi: {otherPart:GetFullName()}`)
		
		--[[
		  SISTEM COOLDOWN
		  Memberi jeda 2 detik sebelum mereset status
		  Menggunakan task.wait() untuk akurasi waktu
		--]]
		task.wait(2)
		
		-- Reset status setelah cooldown selesai
		partIsTouched = false
		print("Part siap menerima sentuhan baru")
	end
end)

print("Sistem deteksi sentuhan aktif pada part:", touchPart.Name)
