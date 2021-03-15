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
delAllX :: [Int] -> Int -> ([Int],Int)
{- delAllX l x mengembalikan sebuah list li dan integer n,
   dengan li memuat elemen-elemen l setelah elemen bernilai x
   dihapus dan n memuat jumlah kemunculan elemen bernilai x
   pada l. -}

-- REALISASI FUNGSI
delAllX l x
 | (isEmpty l) = ([], 0) -- basis
 | otherwise = let -- rekurens
                (lNew, freq) = delAllX (tail l) x
               in
                if ((head l)==x) then
                 (lNew, freq+1)
                else
                 (konso (head l) lNew, freq)
                
-- APLIKASI
-- delAllX [3,2,6,2,3] 3
-- ([2,6,2],2)
-- delAllX [] 3
-- ([],0)