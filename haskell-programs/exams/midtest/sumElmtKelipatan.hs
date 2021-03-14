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

-- DEFINISI DAN SPESIFIKASI
sumElmtKelipatan :: [Int] -> Int -> Int
{- sumElmtKelipatan l x menghasilkan penjumlahan elemen-elemen
   kelipatan x pada l.
   Prekondisi: seluruh elemen l adalah integer positif
   (jika list tidak kosong) dan x>0. List kosong menghasilkan 0. -}

-- REALISASI
sumElmtKelipatan l x
 | (isEmpty l) = 0 -- basis
 | otherwise =  sumElmtKelipatan (tail l) x + if ((mod (head l) x)==0) then (head l) else 0 -- rekursif

-- APLIKASI
-- sumElmtKelipatan [4,2,1,6,7] 2
-- 12