-- DEFINISI DAN SPESIFIKASI
filterGanjil :: [Int] -> [Int]
{- Fungsi filterGanjil(li) akan mengembalikan
copy dari list of integers tanpa elemen genap. -}

-- FUNGSI ANTARA
isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(li) akan memberikan True
-- jika list kosong dan sebaliknya.

konso :: Int -> [Int] -> [Int]
-- konso(e,li) menghasilkan sebuah list dari lh (sebuah elemen)
-- dan li (list of Int), dengan e sebagai elemen pertama:
-- e o li -> li'

konkat :: [Int]-> [Int] -> [Int]
-- konkat(l1,l2) menghasilkan konkatenasi l1 dan l2,
-- dengan list l2 "sesudah" list l1

-- REALISASI
filterGanjil li
 | (isEmpty li) = [] -- basis
 | (mod (head li) 2 == 0) = konkat [] (filterGanjil (tail li)) -- rekurens genap
 | otherwise = konkat [head li] (filterGanjil (tail li)) -- rekurens ganjil

konkat l1 l2 
 | (isEmpty l1) = l2 --basis
 | otherwise =  (konso(head l1) (konkat(tail l1) l2)) -- rekurens

konso e li = [e] ++ li

isEmpty li = null li

-- APLIKASI
-- filterGanjil [1,2,3]