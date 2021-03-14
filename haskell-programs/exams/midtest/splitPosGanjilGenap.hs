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
splitPosGanjilGenap :: [Int] -> ([Int],[Int])
{- splitPosGanjilGenap l menghasilkan pasangan list
   (l1,l2), dengan l1 berisi semua elemen l pada 
   posisi ganjil (posisi ke-1, 3, 5, dst.) dan l2
   berisi semua elemen l pada posisi genap (posisi
   ke-2, 4, 6, dst.).
   Prekondisi: l mungkin kosong. Semua elemen l positif. -}

-- REALISASI
splitPosGanjilGenap l
 | (isEmpty l) = ([],[]) -- basis list kosong
 | (isOneElmt l) = (l,[]) -- basis list satu elemen
 | otherwise = let -- rekursif
                (l1,l2) = splitPosGanjilGenap (tail (tail l))
               in
                (konso (head l) l1, konso (head (tail l)) l2)

-- APLIKASI
-- sumElmtKelipatan [4,2,1,6,7] 2
-- 12