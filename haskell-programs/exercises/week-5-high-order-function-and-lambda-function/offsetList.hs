-- DEFINISI DAN SPESIFIKASI
offsetList :: [Int] -> (Int -> Int) -> [Int]
{- offsetList li offset akan mengubah nilai
   elemen pada list integer li sesuai dengan
   aturan offset yang dipilih. -}

plus2 :: Int -> Int
-- plus2 n akan mengembalikan n+2.

minus1 :: Int -> Int
-- minus1 n akan mengembalikan n-1.

offKond :: Int -> Int
-- offKond n akan mengembalikan
-- 10 jika 0<=n<=40
-- 5 jika 41<=n<=60
-- 3 jika 61<=n<=89
-- 1 jika 89<n
-- 0 untuk lainnya

isEmpty :: [Int] -> Bool
-- isEmpty li mengembalikan True jika list kosong
-- dan sebaliknya.

konso :: Int -> [Int] -> [Int]
-- konso e li menghasilkan sebuah list dari e (sebuah elemen)
-- dan li (list of Int), dengan e sebagai elemen pertama:
-- e o li -> li'

-- REALISASI
offsetList li offset
 | isEmpty li = [] -- basis
 | otherwise = konso (offset (head li)) (offsetList (tail li) offset) -- rekurens

plus2 n = n+2

minus1 n = n-1

offKond n
 | (0<=n)&&(n<=40) = 10
 | (41<=n)&&(n<=60) = 5
 | (61<=n)&&(n<=89) = 3
 | (89<n) = 1
 | otherwise = 0

isEmpty li = null li

konso e li = [e] ++ li