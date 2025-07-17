--[[
  Scope fungsi harus ditulis secara eksplisit dengan kata kunci 'local'.
  Jika tidak menggunakan 'local', maka fungsi atau variabel tersebut akan bersifat global,
  dan bisa menabrak (menimpa) fungsi atau variabel lain dengan nama yang sama.

  Untuk penamaan:
  - Nama boleh terdiri dari huruf, angka, underscore (_) dan titik (.).
  - Tidak boleh diawali dengan angka atau mengandung spasi.

  Konvensi penamaan fungsi yang umum digunakan:
  - camelCase: contoh 'kotakBiru'
  - PascalCase: contoh 'KotakBiru'
  - snake_case (menggunakan underscore): contoh 'kotak_biru'

  Gunakan konvensi yang konsisten agar kode mudah dibaca dan dikelola.
]]

-- Cek Script fungsi Advanced
local function ubahKotakBiru()
	local kotakBiru = game.Workspace.kotak1
	kotakBiru.BrickColor = BrickColor.new("Bright blue")
end

local function ubahKotakMerah()
	local kotakMerah = game.Workspace.kotak2
	kotakMerah.BrickColor= BrickColor.new("Bright red")
end

local function tambah(nilai1, nilai2)
	local hasil = nilai1 + nilai2
	print(hasil)
end

tambah(9, 8)             -- Tidak perlu wadah jika hanya ingin print saja.


-- Return untuk modularisasi kode, kode disimpan di 'wadah' lalu digunakan lagi
local function kali(nilai1, nilai2)
	local hasil = nilai1 * nilai2
	return hasil
end

local wadah = kali(9, 2) -- Membutuhkan wadah untuk menampung return value yang di kembalikan
print(wadah)             -- Karena luau tidak punya caller (main) seperti C++.
print(kali(9, 2))        -- Tidak perlu wadah jika hanya ingin print saja.
