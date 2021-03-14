-- DERET SEGITIGA                               deretSegitiga(n)

-- DEFINISI DAN SPESIFIKASI
deretSegitiga :: Int -> Int
{-  fungsi untuk mencari nilai bilangan ke-n pada deret segitiga
    yaitu 1, 3, 6, 10, 15, 21, 28, 36, ...-}

-- REALISASI
deretSegitiga n
    | (n==1)    = 1                         -- basis
    | otherwise = deretSegitiga (n-1) + n   -- rekurens

-- APLIKASI
-- deretSegitiga 3