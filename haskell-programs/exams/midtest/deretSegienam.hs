-- DEFINISI DAN SPESIFIKASI
deretSegienam :: Int -> Int
{- deretSegienam n akan mengembalikan
   nilai pada deret heksagon ke n.
   Dimana deret heksagon adalah 
   1, 6, 15, 28, 45, 66, 91, 120, 153,
   190, 231, ...
   Prekondisi: n>=1. -}

-- REALISASI
deretSegienam n
 | (n==1) = 1 -- basis
 | otherwise = deretSegienam (n-1) + 3*n + (n-3) -- rekurens

-- APLIKASI
-- deretSegienam 10
-- 190