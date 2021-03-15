-- DEFINISI DAN DESKRIPSI
filterList :: [Int] -> (Int -> Bool) -> [Int]
{- filterList li f akan mengembalikan list of
   integer dengan melewati tiap elemen li ke
   filter f. -}

isPos :: Int -> Bool
-- isPos n akan mengembalikan nilai True
-- jika integer n positif.

isNeg :: Int -> Bool
-- isNeg n akan mengembalikan nilai True
-- jika integer n negatif.

isKabisat :: Int -> Bool
-- isKabisat y mengembalikan nilai True
-- jika integer y dapat dibagi 400 atau
-- dapat dibagi 4 tetapi tidak dapat
-- dibagi 100.

konkat :: [Int] -> [Int] -> [Int]
-- konkat l1 l2 akan mengembalikan list gabungan l1 dan l2.

isEmpty :: [Int] -> Bool
-- isEmpty li mengembalikan True jika list kosong
-- dan sebaliknya.

konso :: Int -> [Int] -> [Int]
-- konso e li menghasilkan sebuah list dari e (sebuah elemen)
-- dan li (list of Int), dengan e sebagai elemen pertama:
-- e o li -> li'

-- REALISASI
filterList li f
 | isEmpty li = [] -- basis
 | otherwise = konkat (if (f (head li)) then [head li] else []) (filterList (tail li) f) -- rekurens

isKabisat y = ((mod y 4 == 0)&&(mod y 100 /= 0))||(mod y 400 == 0)

isPos n = n>0

isNeg n = n<0

konkat l1 l2
 | isEmpty l1 = l2 -- basis
 | otherwise = konso (head l1) (konkat (tail l1) l2) --rekurens

isEmpty li = null li

konso e li = [e] ++ li

{- Ekspresi lambda

 isPos
 > filterList [1,2,2000,(-1)] (\x->x>0)
 [1,2,2000]

 isNeg
 > filterList [1,2,2000,(-1)] (\x->x<0)
 [-1]

 isKabisat
 > filterList [1,2,2000,(-1)] (\y->((mod y 4 == 0)&& (mod y 100 /= 0)) || (mod y 400 == 0) )
 [2000]
-}