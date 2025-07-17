--Variabel dan Fungsi:
-- camelCase – digunakan untuk fungsi, variabel lokal, dan parameter.
local playerScore = 0
local function getPlayerName() ... end


--PascalCase 
-- digunakan untuk nama class, modul, atau instance/object penting.
local DataStoreService = game:GetService("DataStoreService")
local PlayerProfile = require(script.PlayerProfile)


--snake_case
--kadang digunakan di proyek open source atau ketika perlu keterbacaan lebih baik dalam variabel panjang.
local max_player_limit = 16


--Hindari:
--Nama dengan spasi, angka di awal, atau karakter simbol aneh.
local 1player      -- ❌ Tidak valid
local player-name  -- ❌ Tidak valid
