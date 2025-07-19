-- Inisialisasi variabel boolean
local a = true
local b = false
local c = true
local d = false

--[[
	Operator logika digunakan untuk menggabungkan atau memodifikasi ekspresi boolean:
	- and : bernilai true jika kedua operand bernilai true
	- or  : bernilai true jika salah satu operand bernilai true
	- not : membalik nilai boolean (true menjadi false, false menjadi true)
]]

-- Contoh penggunaan operator logika AND
if a and c then -- Kedua variabel a dan c bernilai true, maka kondisi terpenuhi
	print("benar") -- Ini akan dicetak
end

-- Contoh penggunaan operator logika OR
if a or b then -- Salah satu dari a atau b bernilai true, maka kondisi terpenuhi
	print("salah") -- Ini akan dicetak
end

-- Contoh penggunaan operator logika NOT
if not a then -- a bernilai true, jadi not a menjadi false -> kondisi tidak terpenuhi
	print("kebalikan") -- Ini tidak akan dicetak
end

--[[
	Operator perbandingan digunakan untuk membandingkan dua nilai:
	- <= : kurang dari atau sama dengan
	- >= : lebih dari atau sama dengan
	- ~= : tidak sama dengan
]]

-- Contoh penggunaan operator <= (kurang dari atau sama dengan)
if 2 + 3 <= 4 then -- 5 <= 4 adalah false
	print("hello") -- Tidak dicetak karena kondisi false
end

-- Contoh penggunaan operator >= (lebih dari atau sama dengan)
if 2 + 1 >= 5 then -- 3 >= 5 adalah false
	print("world") -- Tidak dicetak karena kondisi false
end

-- Contoh penggunaan operator ~= (tidak sama dengan)
if 2 + 4 ~= 6 then -- 6 ~= 6 adalah false
	print(true) -- Tidak dicetak karena kondisi false
end
