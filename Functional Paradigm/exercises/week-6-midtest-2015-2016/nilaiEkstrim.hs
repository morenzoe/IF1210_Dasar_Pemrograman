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
nilaiEkstrim :: [Int] -> (Int,Int)
{- nilaiEkstrim l mengembalikan pasangan integer
   (min,max), dengan min adalah nilai terkecil
   pada l dan max adalah nilai terbesar pada l.
   Prekondisi: l tidak kosong. -}

-- REALISASI
nilaiEkstrim l
 | (isOneElmt l) = (head l, head l) -- basis
 | otherwise = let -- rekurens
                (min,max) = nilaiEkstrim (tail l)
               in 
                (
                if (min < (head l)) then min else (head l), 
                if (max > (head l)) then max else (head l)
                )

-- APLIKASI
-- nilaiEkstrim [3,2,6,5,8,0,1,2,12,56,44,3,28]
-- (0,56)