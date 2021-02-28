-- DEFINISI DAN SPESIFIKASI
sumIsiList :: [Int] -> Int
{- Fungsi sumIsiList(l) akan mengembalikan
 jumlah dari tiap elemen list of integer. -}

-- FUNGSI ANTARA
isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(lf) akan memberikan True
-- jika list kosong dan sebaliknya.

isEmpty l = null l

-- REALISASI
sumIsiList l
 | (isEmpty l) = 0 -- basis
 | otherwise = (head l) + (sumIsiList (tail l)) -- rekurens

-- APLIKASI
-- sumIsiList [1,2,3]