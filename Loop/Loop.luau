-- Loop FOR: mengeksekusi blok kode sebanyak jumlah iterasi yang ditentukan
-- Format: for [nilai_awal], [nilai_akhir], [step] do ... end
-- - aCounter = 1: memulai iterasi dari angka 1
-- - 10: iterasi berakhir ketika mencapai angka 10
-- - 1: penambahan nilai setiap iterasi (increment)
for aCounter = 1, 10, 1 do
    print("Satu")
    print("Dua")
    print("Tiga")
    -- Catatan: Ketiga perintah print di atas akan dijalankan 10 kali
end

-- Loop WHILE: mengeksekusi blok kode SELAMA kondisi terpenuhi
local myWhileCounter = 5  -- Inisialisasi counter

-- Blok kode akan dieksekusi selama nilai myWhileCounter <= 5
while myWhileCounter <= 5 do
    print("hitungan 1")
    print("hitungan 2")
    print("hitungan 3")
    -- Increment: menambah nilai counter untuk mencegah infinite loop
    myWhileCounter = myWhileCounter + 1
    -- Catatan: Blok kode ini hanya dijalankan 1 kali karena:
    -- - Iterasi 1: myWhileCounter=5 (memenuhi kondisi <=5)
    -- - Setelah increment: myWhileCounter=6 (kondisi tidak terpenuhi)
end

-- NESTED LOOP (Loop Bersarang): loop di dalam loop
-- Outer loop (loop luar): dijalankan 5 kali
for myCounter = 1, 5, 1 do
    print("A")  -- Dicetak 5 kali sesuai iterasi outer loop
    
    -- Inner loop (loop dalam): dijalankan 3 kali untuk SETIAP iterasi outer loop
    for myCounter2 = 1, 3, 1 do
        print("B")  -- Total akan dicetak 5 x 3 = 15 kali
    end
end
