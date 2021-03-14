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

-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
isGanjil :: Int -> Bool
{- isGanjil x bernilai True jika x bilangan ganjil. -}

isFactorOf100 :: Int -> Bool
{- isFactorOf100 n bernilai True jika n adalah faktor dari 100. -}

-- REALISASI FUNGSI ANTARA
isGanjil x = ((mod x 2)/=0)

isFactorOf100 n = ((mod 100 n)==0)

-- DEFINISI DAN SPESIFIKASI FUNGSI
generateList :: Int -> Int -> (Int -> Bool) -> [Int]
{- generateList a b f akan menghasilkan sebuah list
    of integer dari a sampai b yang memenuhi
    kondisi fungsi f.
    Prekondisi: a<=b. -}

-- REALISASI FUNGSI
generateList a b f
 | (a>b) = [] -- basis
 | otherwise = if (f a) then
                konso a (generateList (a+1) b f)
               else
                generateList (a+1) b f

-- APLIKASI
-- dengan parameter f pada soal
-- generateList 1 10 isGanjil
-- dengan lambda
-- generateList 1900 2021 (\x->(((mod x 4)==0)&&((mod x 100)/=0)||((mod x 400)==0)))