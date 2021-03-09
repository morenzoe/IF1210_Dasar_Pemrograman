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
isSortedDown :: [Int] -> Bool
{- isSortedDown l mengembalikan True apabila l terurut mengecil.
   Prekondisi: list tidak kosong. -}

getElTengah :: [Int] -> Int
{- getElTengah l mengembalikan elemen l yang berada di tengah-
   tengah. Apabila elemen l berjumlah genap (misalnya n),
   maka yang dikembalikan adalah elemen pada posisi (n div 2).
   Prekondisi: list tidak kosong. -}

elPosGanjil :: [Int] -> [Int]
{- elPosGanjil l mengembalikan sebuah list yang berisi semua 
   elemen l pada posisi ganjil. -}

delAllX :: [Int] -> Int -> ([Int],Int)
{- delAllX l x mengembalikan sebuah list li dan integer n,
   dengan li memuat elemen-elemen l setelah elemen bernilai x
   dihapus dan n memuat jumlah kemunculan elemen bernilai x
   pada l. -}

-- REALISASI FUNGSI
isSortedDown l
 | (isOneElmt l) = True -- basis
 | otherwise = if ((head l)>(head (tail l))) then isSortedDown (tail l) else False -- rekurens

getElTengah l
 | (isEmpty (init (tail l))) = head l -- basis kosong
 | (isOneElmt (init (tail l))) = head (init (tail l)) -- basis hanya 1 elemen
 | otherwise = getElTengah (init (tail l)) -- rekurens

elPosGanjil l
 | (isOneElmt l) = [head l] -- basis
 | otherwise = konso (head l) (elPosGanjil (tail (tail l))) -- rekurens

delAllX l x
 | (isEmpty l) = ([], 0) -- basis
 | otherwise = let -- rekurens
                (lf, fq) = delAllX (tail l) x
               in
                if ((head l)==x) then
                 (lf, fq+1)
                else
                 (konso (head l) lf, fq)
                
-- APLIKASI
-- isSortedDown [8,5,2,4]
-- False
-- isSortedDown [5,2,0]
-- True
-- getElTengah [3,2,6,5,8]
-- 6
-- getElTengah [1,2,3,4]
-- 2
-- elPosGanjil [2,4,6,8,1,3,5,7,9]
-- [2,6,1,5,9]
-- delAllX [3,2,6,2,3] 3
-- ([2,6,2],2)
-- delAllX [] 3
-- ([],0)