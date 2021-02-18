-- PENCARI PERSEKUTUAN TERBESAR         fpb(x,y)

-- DEFINISI DAN SPESIFIKASI
fpb :: Int -> Int -> Int
{-  fpb(x,y) adalah fungsi yang akan mencari persekutuan
    terbesar dari dua integer. -}

-- REALISASI
fpb x y
    | ((mod x y)==0)    = y                 -- basis
    | otherwise         = fpb y (mod x y)   -- rekurens

-- APLIKASI
-- fpb 4 8