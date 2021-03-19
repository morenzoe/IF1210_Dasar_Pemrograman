module AlternateSort where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
delElmt :: Int -> [Int] -> [Int]
{- delElmt n li akan mengembalikan list of integer li tanpa
   elemen integer n. -}

getSmallest :: [Int] -> Int
{- getSmallest li akan mengembalikan elemen integer terkecil dari
   suatu list of integer li. 
   Prekondisi: li tidak kosong. -}

sortList :: [Int] -> [Int]
{- sortList li akan mengembalikan li yang terurut tidak mengecil. -}

splitList :: [Int] -> ([Int], [Int])
{- splitList li akan membagi list of integer li menjadi dua list of integer 
   dengan jumlah elemen yang sama. Jika jumlah elemen li ganjil, list of 
   integer pertama akan 1 elemen lebih banyak. -}

getHeadl1 :: ([Int],[Int]) -> [Int]
{- getHead (l1,l2) akan mengambil elemen pertama l1. -}

getLastl2 :: ([Int],[Int]) -> [Int]
{- getLast (l1,l2) akan mengambil elemen terakhir l2. -}

-- REALISASI FUNGSI ANTARA
getSmallest li
    | isOneElmt li = head li -- basis
    | otherwise = -- rekurens
        let
            n = getSmallest (tail li) 
        in
            if ((head li) < n) then head li
            else n

delElmt n li
 | isEmpty li = li -- basis list kosong
 | ((head li) == n) = tail li -- basis n adalah elemen pertama li
 | otherwise = konso (head li) (delElmt n (tail li)) -- rekurens

sortList li
 | isEmpty li = [] -- basis
 | otherwise =  -- rekurens
        let
            n = getSmallest li
        in
            konso n (sortList (delElmt n li))

splitList l
    | isEmpty l = ([], []) -- basis kedua list kosong
    | isOneElmt l = (l, []) -- basis list terdiri dari satu elemen
    | otherwise = -- rekurens
        let
            (lDepan, lBelakang) = splitList (tail (init l))
        in
            (konso (head l) lDepan, konsDot lBelakang (last l))

getHeadl1 (l1,l2)
 | isEmpty l1 = [] -- basis
 | otherwise = konso (head l1) (getLastl2 (tail l1,l2)) -- rekurens

getLastl2 (l1,l2)
 | isEmpty l2 = [] -- basis
 | otherwise = konso (last l2) (getHeadl1 (l1,init l2)) -- rekurens

-- DEFINISI DAN SPESIFIKASI 
alternateSort :: [Int] -> [Int]
{- alternateSort li akan mengembalikan list of integer dengan susunan
   terkecil, terbesar, terkecil, terbesar, dan seterusnya. -}

-- REALISASI
alternateSort li = getHeadl1 (splitList (sortList li))

-- APLIKASI
-- alternateSort [9,10,11,12]
