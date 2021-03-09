-- DEFINISI DAN SPESIFIKASI
pangkat :: Int-> Int -> Int
{-  pangkat a b mengembalikan hasil pemangkatan
    integer a dengan integer b.
    Prekondisi: a>0 dan b>=0. -}

-- REALISASI
pangkat a b
 | (b==0) = 1 -- basis
 | otherwise = a * pangkat a (b-1) -- rekurens

-- APLIKASI
-- pangkat 2 5
-- 32
-- pangkat 3 3
-- 27