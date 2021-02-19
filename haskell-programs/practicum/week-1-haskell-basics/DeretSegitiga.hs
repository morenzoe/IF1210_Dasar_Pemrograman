-- DERET SEGITIGA                               deretSegitiga(n)
module DeretSegitiga where
-- DEFINISI DAN SPESIFIKASI
    deretSegitiga :: Int -> Int
{-  deretSegitiga(n) adalah fungsi untuk mencari nilai bilangan 
    ke-n pada deret segitiga. -}

-- PREKONDISI
-- n > 0

-- REALISASI
    deretSegitiga n
        | (n==1)    = 1                         -- basis
        | otherwise = deretSegitiga (n-1) + n   -- rekurens

-- APLIKASI
-- deretSegitiga 3