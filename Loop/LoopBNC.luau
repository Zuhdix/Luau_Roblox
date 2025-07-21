--[[
  PERULANGAN FOR DASAR
  Loop ini akan menjalankan blok kode sebanyak 100.000 kali (dari 1 hingga 100000).
  Increment default adalah 1 (tidak perlu ditulis eksplisit).
--]]
for i = 1, 100000 do
    print("ini statment")  -- Aksi yang diulang
    
    -- Jika mencapai iterasi ke-200, hentikan perulangan
    if i == 200 then
        break  -- Menghentikan perulangan sepenuhnya
    end
end

--[[
  PERULANGAN WHILE DENGAN COUNTER
  Loop ini menggunakan counter untuk mengontrol jumlah iterasi.
  Akan berjalan selama nilai counter <= 1.000.000.
--]]
local counter = 1

while counter <= 1000000 do
    print("ini while loop")  -- Aksi yang diulang
    
    -- Hentikan loop jika counter mencapai 100
    if counter == 100 then
        break
    end
    
    counter += 1  -- Increment counter (sintaks += khas Luau)
end

--[[
  PERULANGAN FOR DENGAN CONTINUE DAN BREAK (Khas Luau)
  Loop ini menggabungkan:
  1. continue: melewati iterasi tertentu (skip eksekusi)
  2. break: menghentikan perulangan

  Catatan khusus Roblox/Luau:
  - Menggunakan keyword 'continue' bawaan (tidak perlu simulasi)
  - Menggunakan operator += untuk increment
--]]
for i = 1, 100000 do
    -- Skip iterasi ke-10 (menggunakan continue khas Luau)
    if i == 10 then
        print("ini skip 10")
        continue  -- Langsung melanjutkan ke iterasi berikutnya
    end
    
    -- Hentikan loop jika mencapai iterasi ke-200
    if i == 200 then
        break
    end
    
    print("ini eksekusi")  -- Hanya dieksekusi jika bukan iterasi ke-10
end
