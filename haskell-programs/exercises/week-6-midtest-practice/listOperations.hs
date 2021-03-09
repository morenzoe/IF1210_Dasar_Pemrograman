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
isAllGanjil :: [Int] -> Bool
{- isAllGanjil l mengembalikan true apabila seluruh elemen l adalah bilangan ganjil.
    Fungsi mengembalikan true jika l adalah list kosong -}

getSmallest :: [Int] -> Int
{- getSmallest l mengembalikan elemen terkecil di l. Prekondisi: l tidak kosong. -}

delElement :: Int -> [Int] -> [Int]
{- delElement x l mengembalikan list l dengan elemen x yang telah dihapus dari l.    
   Jika x bukan elemen l, maka fungsi mengembalikan l semula.   
   Prekondisi: elemen l unik (setiap elemen hanya muncul 1 kali). -}

sortList :: [Int] -> [Int]
{- sortList l mengembalikan hasil pengurutan list l hingga elemen-elemennya terurut  membesar. Prekondisi: l tidak kosong dan semua elemennya unik. -}

-- REALISASI
isAllGanjil l
 | isEmpty l = True -- basis
 | otherwise = if (mod (head l) 2 /= 0) then isAllGanjil (tail l) else False  -- rekurens

getSmallest l
 | isOneElmt l = head l -- basis
 | otherwise =  -- rekurens
  let
   n = getSmallest (tail l)
  in
   if n < head l then n
   else head l

delElement x l
 | isEmpty l = [] -- basis
 | ((head l)==x) = tail l  -- rekurens
 | otherwise = konso (head l) (delElement x (tail l))

sortList l
 | isOneElmt l = l -- basis
 | otherwise =  -- rekurens
  let
   elmtKecil = getSmallest l
  in
   konso elmtKecil (sortList (delElement elmtKecil l))

-- APLIKASI
-- isAllGanjil [1,3,5,7]
-- True
-- getSmallest [2,1]
-- 1
-- getSmallest [(-1),2,5,12,5,6,(-10)]
-- -10
-- delElement 1 [2,1]
-- [2]
-- delElement 1 [2,3,6,7,4,1,5,8]
-- [2,3,6,7,4,5,8]
-- sortList [2,1]
-- [1,2]
-- sortList [5,6,8,7,2,4,1,9,3]
-- [1,2,3,4,5,6,7,8,9]

-- DEFINISI DAN SPESIFIKASI GABUNGAN
allFunc :: Int -> [Int] -> (Bool, Int, [Int], [Int])

-- REALISASI
allFunc x l = (isAllGanjil l, getSmallest l, delElement x l, sortList l)