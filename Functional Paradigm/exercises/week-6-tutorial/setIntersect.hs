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
setIntersect :: [Int] -> [Int] -> [Int]
{- setIntersect l1 l2 menerima dua list yang masing-
   masing terdiri dari elemen yang unik dan terurut
   membesar, kemudian mengembalikan sebuah list 
   berisi irisan dari kedua list tersebut dengan
   tetap bersifat unik dan mengurut membesar. -}

-- REALISASI FUNGSI
setIntersect l1 l2
 | (isEmpty l1)||(isEmpty l2) = [] -- basis
 | otherwise = if ((head l1)>(head l2)) then -- rekurens
                setIntersect l1 (tail l2)
               else if ((head l1)<(head l2)) then
                setIntersect (tail l1) l2
               else
                konso (head l1) (setIntersect (tail l1) (tail l2))
-- APLIKASI
-- setIntersect [2,4,6,8,10] [3,4,5,6]
-- [4,6]
-- setIntersect [] [2,3,4,5]
-- []
-- setIntersect [4,6,8,13,26] []
-- []
-- setIntersect [4,6,8,13,26] [1,3,5]
-- []