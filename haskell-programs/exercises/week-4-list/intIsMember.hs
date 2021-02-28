-- DEFINISI DAN SPESIFIKASI
intIsMember :: Int -> [Int] -> Bool
-- Fungsi intIsMember(i,li) akan memberikan True
-- jika sebuah integer termasuk sebagai elemen
-- dari sebuah list of integer dan sebaliknya.

-- FUNGSI ANTARA
isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(li) akan memberikan True
-- jika list kosong dan sebaliknya.

-- REALISASI
intIsMember i li
 | (isEmpty li) = False        -- basis
 | otherwise =                 -- rekurens
  if (i == head li) then True
  else intIsMember i (tail li)

isEmpty li = null li

-- APLIKASI
-- intIsMember 1 [1,2,3]