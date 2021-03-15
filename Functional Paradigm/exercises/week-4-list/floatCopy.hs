-- DEFINISI DAN SPESIFIKASI
floatCopy :: [Float] -> [Float]
-- Fungsi realCopy(lf) akan memberikan duplikat
-- list berisi elemen real dari input.

-- FUNGSI ANTARA
isEmpty :: [Float] -> Bool
-- Fungsi isEmpty(lf) akan memberikan True
-- jika list kosong dan sebaliknya.

konso :: Float -> [Float] -> [Float]
-- konso(e,lr) menghasilkan sebuah list dari e (sebuah--elemen) 
-- dan lf (list of elemen), dengan e sebagai elemen pertama: 
-- e o lf -> lf'

-- REALISASI
floatCopy lf
 | (isEmpty lf) = []                                 -- basis
 | otherwise = konso (head lf) (floatCopy (tail lf)) -- rekurens

isEmpty lf = null lf

konso e lf = [e] ++ lf

-- APLIKASI
-- 