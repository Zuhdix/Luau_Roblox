-- Ambil model parent dari script ini (yaitu model yang memiliki script ini)
-- Ini dilakukan untuk mengakses instance "Part1" dan "Part2"
local model = script.Parent

-- Cari instance "Part1" di dalam model yang baru saja diambil,
-- dan simpan hasilnya ke dalam variabel "part1"
-- Metode FindFirstChild() akan menunggu hingga instance "Part1" ditemukan
local part1 = model:FindFirstChild("Part1")

-- Jika part1 ada, maka ubah warna BrickColor-nya menjadi warna Cork
-- Ini dilakukan untuk mengubah tampilan part1
if part1 then
    part1.BrickColor = BrickColor.new("Cork")
end

-- Jika part1 tidak ditemukan, maka tidak akan ada error,
-- karena kode ini akan menunggu hingga instance "Part2" dimasukkan ke dalam model
-- Metode WaitForChild() akan menunggu hingga instance "Part2" ditemukan
local part2 = model:WaitForChild("Part2")
print("Part 2 ada")  -- Ini akan dicetak ketika part2 benar-benar ada
