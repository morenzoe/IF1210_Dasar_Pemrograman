-- FUNGSI ANTARA

isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(l) akan memberikan True
-- jika list kosong dan sebaliknya.

nbElmt :: [Int] -> Int
-- Fungsi charNbElmt(l) akan memberikan
-- jumlah elemen pada suatu list berisi huruf.

-- REALISASI
isOrdered l
 | (nbElmt l == 1) = True -- basis
 | ((head l)<(head (tail l))) = isOrdered (tail l)
 | otherwise = False


nbElmt l
 | (isEmpty l) = 0 -- basis
 | otherwise = nbElmt (tail l) + 1 -- rekurens

isEmpty l = null l