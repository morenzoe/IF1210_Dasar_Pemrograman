-- DEFINISI DAN SPESIFIKASI PRIMITIF LIST 
-- KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e dan li dengan e sebagai    elemen pertama -}
konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li dan e dengan e sebagai
elemen terakhir -}
-- SELEKTOR
-- head : [Int] -> Int
{- head l menghasilkan elemen pertama list l, l tidak kosong -}
-- tail : [Int] -> [Int]
{- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong -}
-- last : [Int] -> Int
{- last l menghasilkan elemen terakhir list l, l tidak kosong -}
-- init : [Int] -> [Int]
{- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong -}
-- PREDIKAT
isEmpty :: [Int] -> Bool
{- isEmpty l true jika list of elemen l kosong, false jika tidak -}
isOneElmt :: [Int] -> Bool
{- isOneElmt l true jika list of integer l hanya mempunyai satu elemen, false jika tidak -}

-- REALISASI FUNGSI PRIMITIF LIST
konso e l = [e] ++ l

konsDot l e = l ++ [e]

isEmpty l = null l

isOneElmt l = (length l)==1

-- DEFINISI DAN SPESIFIKASI FUNGSI
getElTengah :: [Int] -> Int
{- getElTengah l mengembalikan elemen l yang berada di tengah-
   tengah. Apabila elemen l berjumlah genap (misalnya n),
   maka yang dikembalikan adalah elemen pada posisi (n div 2).
   Prekondisi: list tidak kosong. -}

-- REALISASI FUNGSI
getElTengah l
 | (isEmpty (init (tail l))) = head l -- basis kosong
 | (isOneElmt (init (tail l))) = head (init (tail l)) -- basis hanya 1 elemen
 | otherwise = getElTengah (init (tail l)) -- rekurens
                
-- APLIKASI
-- getElTengah [3,2,6,5,8]
-- 6
-- getElTengah [1,2,3,4]
-- 2