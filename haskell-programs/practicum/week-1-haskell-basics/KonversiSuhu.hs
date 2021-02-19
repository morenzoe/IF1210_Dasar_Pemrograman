-- PENGKONVERSI SUHU                    konversiSuhu(x,s)
module KonversiSuhu where
-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> Char -> Float
{-   konversiSuhu(x,s) adalah fungsi untuk mengkonversi 
     suhu x dari satu satuan Celcius ke satuan suhu yang lain, 
     yaitu Fahrenheit, Reamur, atau Kelvin sesuai dengan kode s.
     Rumus yang digunakan adalah R = 4/5 * x, F = (9/5 * x) + 32,
     K = x + 273.15 -}

-- REALISASI
konversiSuhu x s
     | s=='R' = (4/5)*x
     | s=='F' = (9/5) * x + 32
     | s=='K' = x + 273.15

-- APLIKASI
-- konversiSuhu 25 ‘R’