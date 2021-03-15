-- DEFINISI DAN SPESIFIKASI
delNthElmt :: Int -> [Char] -> [Char] 
{- delNthElmt n l menghilangkan elemen ke-n dari l. 
   Asumsi: n lebih kecil atau sama dengan jumlah elemen l; l tidak kosong -}

-- FUNGSI ANTARA
konso :: Char -> [Char] -> [Char]
-- konso(e,li) menghasilkan sebuah list dari lh (sebuah elemen)
-- dan li (list of Int), dengan e sebagai elemen pertama:
-- e o li -> li'

-- REALISASI
delNthElmt n l
 | (n==1) = tail l -- basis
 | otherwise = konso (head l) (delNthElmt (n-1) (tail l)) -- rekurens (fungsi antara konso)

konso e l = [e] ++ l