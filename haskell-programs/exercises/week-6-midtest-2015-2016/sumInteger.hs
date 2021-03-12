-- DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
{- sumInteger m n f akan menjumlahkan integer positif
   dari m sampai n yang memenuhi kriteria fungsi f. -}

-- REALISASI
sumInteger m n f
 | (m>n) = 0 -- basis
 | otherwise = sumInteger (m+1) n f + if (f m) then m else 0 -- rekurens

-- APLIKASI
-- sumInteger 2 9 (\x-> ((mod x 2)==0))
-- 20
-- sumInteger 2 9 (\x-> (x>5))
-- 30
-- sumInteger 8 5 (\x-> ((mod x 2)==0))
-- 0
-- sumInteger 1 100 (\x-> ((mod 100 x)==0))
-- 217
-- sumInteger 1 100 (\x-> (((mod x 2)==0)&&((mod x 10)==0)||((mod x 2)/=0)&&((mod x 5)==0)))
-- 1050
-- sumInteger 25 25 (\x-> (x<10))
-- 0