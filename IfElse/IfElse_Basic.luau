-- Fungsi ini digunakan untuk menjumlahkan dua angka dan mencetak hasil tertentu berdasarkan syarat yang ditentukan.
-- Jika hasil penjumlahan sama dengan 4, 6, atau 8, maka akan mencetak pesan tertentu.
-- Jika tidak memenuhi salah satu dari syarat tersebut, maka akan mencetak "tidak ada".

-- Mendefinisikan fungsi bernama 'tambah' dengan dua parameter: num1 dan num2
local function tambah(num1, num2)
	-- Menjumlahkan kedua parameter dan menyimpannya di variabel 'hasil'
	local hasil = num1 + num2

	-- Mengecek kondisi berdasarkan nilai hasil
	if hasil == 4 then
		-- Kondisi terpenuhi jika hasil sama dengan 4
		print("hasilnya 4")
	elseif hasil == 6 then
		-- Kondisi terpenuhi jika hasil sama dengan 6
		print("hasilnya 6")
	elseif hasil == 8 then
		-- Kondisi terpenuhi jika hasil sama dengan 8
		print("hasilnya 8")
	else
		-- Jika tidak ada kondisi yang terpenuhi, maka ini yang dijalankan
		print("tidak ada")
	end
end

-- Pemanggilan fungsi dengan berbagai nilai untuk melihat hasil kondisi
tambah(2, 2)  -- hasil = 4, akan mencetak "hasilnya 4"
tambah(2, 4)  -- hasil = 6, akan mencetak "hasilnya 6"
tambah(4, 9)  -- hasil = 13, tidak ada kondisi yang sesuai, mencetak "tidak ada"
tambah(4, 4)  -- hasil = 8, akan mencetak "hasilnya 8"
