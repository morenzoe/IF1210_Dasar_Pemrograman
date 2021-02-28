-- DEFINISI DAN SPESIFIKASI
charNbElmt :: [Char] -> Int
-- Fungsi charNbElmt(lc) akan memberikan
-- jumlah elemen pada suatu list berisi huruf.

-- FUNGSI ANTARA
isEmpty :: [Char] -> Bool
-- Fungsi isEmpty(lc) akan memberikan True
-- jika list kosong dan sebaliknya.

-- REALISASI
charNbElmt lc
 | (isEmpty lc) = 0                     -- basis
 | otherwise = charNbElmt (tail lc) + 1 -- rekurens

isEmpty lc = null lc

-- APLIKASI
-- charNbElmt [a,b,c]