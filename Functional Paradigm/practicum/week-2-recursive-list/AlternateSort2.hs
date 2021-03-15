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

getBiggest :: [Int] -> Int
{- getSmallest li akan mengembalikan elemen integer terbesar dari
   suatu list of integer li. 
   Prekondisi: li tidak kosong. -}

getAlternate :: [Int] -> Int -> (Int,[Int])
{- getAlternate li x akan mengembalikan elemen terkecil jika x ganjil 
   dan elemen terbesar jika x genap. -}

alternateSortStep :: [Int] -> Int -> [Int]
{- alternateSortstep li x akan mengembalikan list dengan mengambil
   elemen terkecil kemudian terbesar dan seterusnya. -}

-- REALISASI FUNGSI ANTARA
delElmt n li
 | isEmpty li = li -- basis list kosong
 | ((head li) == n) = tail li -- basis n adalah elemen pertama li
 | otherwise = konso (head li) (delElmt n (tail li)) -- rekurens

getSmallest li
    | isOneElmt li = head li -- basis
    | otherwise = -- rekurens
        let
            n = getSmallest (tail li) 
        in
            if ((head li) < n) then head li
            else n

getBiggest li
    | isOneElmt li = head li -- basis
    | otherwise = -- rekurens
        let
            n = getBiggest (tail li) 
        in
            if ((head li) > n) then head li
            else n

getAlternate li x
 | ((mod x 2)==0) = let
                     smallest = getSmallest li
                    in
                     (smallest, delElmt smallest li)
 | otherwise = let
                biggest = getBiggest li
               in
                (biggest, delElmt biggest li)

alternateSortStep li x 
 | (isOneElmt li) = li
 | otherwise = let 
                (el, delLi) = getAlternate li x
               in
                konso el (alternateSortStep delLi (x+1))

-- DEFINISI DAN SPESIFIKASI 
alternateSort :: [Int] -> [Int]
{- alternateSort li akan mengembalikan list of integer dengan susunan
   terkecil, terbesar, terkecil, terbesar, dan seterusnya. -}

-- REALISASI
alternateSort li 
 | (isEmpty li) = []
 | (isOneElmt li) = li
 | otherwise = alternateSortStep li 0

-- APLIKASI
-- alternateSort [9,10,11,12]
