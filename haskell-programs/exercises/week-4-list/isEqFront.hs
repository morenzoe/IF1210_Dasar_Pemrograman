-- DEFINISI DAN SPESIFIKASI
isEqFront :: [Char] -> [Char] -> Bool

-- FUNGSI ANTARA
isEmpty :: [Char] -> Bool
-- Fungsi isEmpty(T) akan memberikan True
-- jika list kosong dan sebaliknya.

-- REALISASI
isEqFront t1 t2
 | (isEmpty t1) = True
 | (isEmpty t2) = False
 | ((head t1)==(head t2)) = isEqFront (tail t1) (tail t2)
 | otherwise = False

isEmpty t1 = null t1