-- DEFINISI DAN SPESIFIKASI
intIsEqual :: [Int] -> [Int] -> Bool
-- Fungsi intIsEqual(li,li) akan memberikan True
-- jika kedua list berisi elemen integer sama persis.

-- FUNGSI ANTARA
isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(li) akan memberikan True
-- jika list kosong dan sebaliknya.

intNbElmt :: [Int] -> Int
-- Fungsi charNbElmt(li) akan memberikan
-- jumlah elemen pada suatu list berisi huruf.

-- REALISASI
intIsEqual li1 li2
 | (intNbElmt li1) /= (intNbElmt li2) = False
 | (isEmpty li1) = isEmpty li2
 | otherwise = if (head li1) == (head li2) then intIsEqual (tail(li1)) (tail(li2))
               else False

intNbElmt li
 | (isEmpty li) = 0                     -- basis
 | otherwise = intNbElmt (tail li) + 1 -- rekurens

isEmpty li = null li

-- APLIKASI
-- intIsEqual [1,2,3] [1,2,3]