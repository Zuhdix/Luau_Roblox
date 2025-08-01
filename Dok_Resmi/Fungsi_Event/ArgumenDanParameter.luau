--[[
📄 Dokumentasi Script Pengurutan Sampah (Garbage Sorting)
Deskripsi:
Script ini mensimulasikan proses penyortiran sampah. Sampah dihancurkan dan efek partikel ditambahkan pada objek yang dapat didaur ulang.

🧱 Komponen:
- Workspace.Cement (sampah): Objek yang akan dihancurkan.
- Workspace.GlassBottle (recyclable): Objek target tempat partikel ditempatkan.

🎯 Fitur:
- Fungsi `sortGarbage(trash, recyclable)`:
  - Menghancurkan objek sampah (`trash`).
  - Membuat efek visual berupa `ParticleEmitter` pada objek `recyclable`.

📝 Catatan:
- Fungsi hanya menerima 2 argumen. Jika diberi argumen ketiga, tidak akan diproses.
]]

-- Mengambil layanan Workspace dari game
local Workspace = game:GetService("Workspace")

-- Menyimpan referensi ke objek yang akan digunakan sebagai argumen
local cementBlock = Workspace.Cement           -- objek yang dianggap sampah
local glassBottle = Workspace.GlassBottle      -- objek yang bisa didaur ulang

-- Fungsi untuk menghancurkan sampah dan mengeluarkan partikel pada objek daur ulang
local function sortGarbage(trash, recyclable)
	-- Membuat partikel baru dengan menggunakan ParticleEmitter
	local sparkle = Instance.new("ParticleEmitter")
	
	-- Menghancurkan objek sampah
	trash:Destroy()
	
	-- Menambahkan partikel ke objek yang bisa didaur ulang
	sparkle.Parent = recyclable
end

-- Memanggil fungsi dengan dua argumen: cementBlock (sampah), glassBottle (recyclable)
sortGarbage(cementBlock, glassBottle)

-- Jika memasukkan tiga argumen saat memanggil fungsi ini,
-- maka argumen ketiga akan diabaikan karena fungsi hanya menerima dua parameter.
