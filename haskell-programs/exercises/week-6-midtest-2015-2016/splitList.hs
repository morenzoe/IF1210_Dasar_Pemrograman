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
splitList :: [Int] -> ([Int],[Int])
{- splitList l mengembalikan dua buah list lfront dan lback,
   dengan lfront memuat elemen l bagian depan dan lback memuat
   elemen l bagian belakang. Jumlah elemen pada lfront sama
   dengan atau 1 elemen lebih banyak dari pada lback. -}

-- REALISASI
splitList l
 | (isEmpty l) = ([],[]) -- basis list kosong
 | (isOneElmt l) = (l,[]) -- basis list hanya satu elemen
 | otherwise = let -- rekurens
                (lfront, lback) = splitList (tail (init l))
               in
                (konso (head l) lfront, konsDot lback (last l))

-- APLIKASI
-- splitList [3,2,6,5,8]
-- ([3,2,6],[5,8])