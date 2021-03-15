-- DEFINISI DAN SPESIFIKASI
sigma :: Int -> Int -> (Int -> Float) -> (Int -> Int) -> Float
{- sigma a b f s akan mengembalikan jumlah dari suatu
   deret f dengan mengambil baris s pada interval dari
   a sampai b. -}

id :: Int -> Int
-- id n mengembalikan n.

p1 :: Int -> Int
-- pi n mengembalikan n+1.

p4 :: Int -> Int
-- p4 n mengembalikan n+4.

cube :: Int -> Int
-- cube n mengembalikan n*n*n.

-- REALISASI
sigma a b f s
 | (a>b) = 0 -- basis
 | otherwise = (f a) + sigma (s a) b f s -- rekurens

id n = n

p1 n = n+1

p4 n = n+4

cube n = n*n*n