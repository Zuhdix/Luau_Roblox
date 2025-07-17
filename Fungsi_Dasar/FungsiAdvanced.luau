----------------------------------------------------------------
-- FUNGSI DENGAN `print` vs FUNGSI DENGAN `return`
----------------------------------------------------------------
-- Perbedaan mendasar:
-- 1. Fungsi pakai `print`: Hasil langsung dicetak, TAPI tidak bisa dipakai di operasi lain.
-- 2. Fungsi pakai `return`: Hasil dikembalikan ke pemanggil, bisa disimpan/diolah lebih lanjut.

----------------------------------------------------------------
-- CONTOH 1: FUNGSI TANPA RETURN (`print` saja)
----------------------------------------------------------------
local function tambah(nilai1, nilai2)
    local hasil = nilai1 + nilai2
    print(hasil)  -- Langsung cetak, tapi nilai LENYAP setelah dicetak
end

tambah(9, 8) -- Output: 17
-- Tapi hasilnya TIDAK bisa dipakai lagi:
-- local x = tambah(9, 8)  -- x akan bernilai `nil`!

----------------------------------------------------------------
-- CONTOH 2: FUNGSI DENGAN RETURN
----------------------------------------------------------------
local function kali(nilai1, nilai2)
    return nilai1 * nilai2  -- Nilai dikembalikan ke pemanggil
end

-- Pilihan penggunaan return value:
-- 1. Simpan di variabel
local wadah = kali(9, 2)  -- wadah = 18
print(wadah)

-- 2. Langsung cetak tanpa variabel
print(kali(9, 2))  -- Output: 18

-- 3. Pakai dalam operasi lanjutan
print(kali(9, 2) + 5)  -- Output: 23

----------------------------------------------------------------
-- CONTOH 3: EXIT FUNCTION DENGAN `return` (PENTING!)
----------------------------------------------------------------
local function cekLogin(username, password)
    -- Jika data kosong, langsung keluar dari fungsi
    if username == "" then
        print("Error: Username kosong!")
        return false  -- Fungsi berhenti di sini
    end

    -- Kode di bawah hanya jalan jika username tidak kosong
    if password == "rahasia123" then
        return true
    else
        return false
    end
end

-- Uji coba:
print(cekLogin("", "abc"))      -- Output: Error... false
print(cekLogin("admin", "xyz")) -- Output: false
print(cekLogin("admin", "rahasia123")) -- Output: true

----------------------------------------------------------------
-- CONTOH 4: RETURN MULTI-NILAI (FITUR UNIK LUA/Luau)
----------------------------------------------------------------
local function hitung(panjang, lebar)
    local luas = panjang * lebar
    local keliling = 2 * (panjang + lebar)
    return luas, keliling  -- Kembalikan 2 nilai sekaligus!
end

-- Tangkap hasilnya:
local L, K = hitung(10, 5)
print("Luas:", L, "Keliling:", K)  -- Output: Luas: 50 Keliling: 30

-- Atau langsung cetak:
print(hitung(10, 5))  -- Output: 50  30
