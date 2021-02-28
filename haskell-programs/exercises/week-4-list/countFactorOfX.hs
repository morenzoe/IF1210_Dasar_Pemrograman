-- DEFINISI DAN SPESIFIKASI
countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan bilangan yang 
   merupakan faktor dari n pada l -}

-- REALISASI
countFactorOfX n l
 | null l = 0                                                             -- basis
 | otherwise = countFactorOfX n (tail l) + if (mod n (head l) == 0) then 1 else 0 -- rekurens

