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
splitListIf :: [Int] -> (Int->Bool) -> ([Int],[Int])
{- splitListIf li f akan mengembalikan sebuah tuple berisi
   dua buah list dimana list pertama adalah elemen-elemen
   li yang memenuhi fungsi f dan list kedua adalah sisanya. -}

-- REALISASI FUNGSI
splitListIf li f
 | (isEmpty li) = ([],[]) -- basis
 | otherwise = let -- rekurens
                (l1,l2) = splitListIf (tail li) f
               in
                if (f (head li)) then 
                 (konso (head li) l1 , l2)
                else
                 (l1, konso (head li) l2)

-- APLIKASI
-- splitListIf [] (\x->((mod x 2)==0))
-- ([],[])
-- splitListIf [1,2,3,4,5,6,7] (\x->x>5)
-- ([6,7],[1,2,3,4,5])
-- splitListIf [0,1,2,3,4,5] (\x->x>=0)
-- ([0,1,2,3,4,5],[])
-- splitListIf [1,2,3,4,5,6,7,8,9,10] (\x->((mod x 3)==0))
-- ([3,6,9],[1,2,4,5,7,8,10])
-- splitListIf [(-8),(-5),(-10),8,10,15,24] (\x->(x>0)&&((mod x 3)==0)||(x<0)&&((mod x 2)==0))
-- ([-8,-10,15,24],[-5,8,10])
-- splitListIf [45,55,76,50,90,50,85,75] (\x->x>75)
-- ([76,90,85],[45,55,50,50,75])