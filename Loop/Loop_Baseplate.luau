-- Mendapatkan referensi ke baseplate di workspace game
local baseplate = game.Workspace.Baseplate

-- Loop FOR untuk mengubah warna baseplate sebanyak 10 kali
for myCounter = 1, 10, 1 do
    -- Mengubah warna baseplate menjadi "Toothpaste"
    baseplate.BrickColor = BrickColor.new("Toothpaste")
    
    -- PAUSE eksekusi script selama 1 detik
    -- task.wait(seconds): Menunda eksekusi kode berikutnya selama waktu tertentu
    -- Fungsi ini membuat script "tidur" selama waktu yang ditentukan
    -- Penting untuk: 
    --   - Memberi jeda antar aksi
    --   - Mencegah game freeze
    --   - Mengontrol timing animasi/perubahan
    task.wait(1)
    
    -- Mengubah warna baseplate menjadi "Really red"
    baseplate.BrickColor = BrickColor.new("Really red")
    task.wait(1)  -- Jeda 1 detik lagi
    
    -- Mengubah warna baseplate menjadi "Gold"
    baseplate.BrickColor = BrickColor.new("Gold")
    task.wait(1)  -- Jeda 1 detik terakhir dalam satu siklus
    
    -- Loop akan mengulang proses ini 10 kali
    -- Total waktu per siklus: 3 detik (1+1+1)
    -- Total waktu seluruh loop: 10 x 3 = 30 detik
end
