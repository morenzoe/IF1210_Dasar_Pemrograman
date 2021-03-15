-- DEFINISI DAN SPESIFIKASI
countIf :: [Int] -> (Int -> Bool) -> Int
{- countIf li f akan menghitung jumlah elemen 
   dalam list integer li yang memenuhi 
   kriteria fungsi f. -}

isEven :: Int -> Bool
-- isEven n mengembalikan True jika n genap
-- dan sebaliknya.

isZero :: Int -> Bool
-- isZero n mengembalikan True jika n sama dengan 
-- nol dan sebaliknya. 

isMultOf5 :: Int -> Bool
-- isMultOf5 n mengembalikan True jika n adalah
-- kelipatan 5 dan sebaliknya.

isCond :: Int -> Bool
-- isCond n mengembalikan True jika n sama dengan 
-- nol; adalah kelipatan 2 dengan rentang
-- 51>=n<=100; bukan kelipatan 2 atau kelipatan 5
-- melainkan kelipatan 3 di luar rentang.

isEmpty :: [Int] -> Bool
-- isEmpty li mengembalikan True jika list kosong
-- dan sebaliknya.

-- REALISASI 
countIf li f
 | isEmpty li = 0 -- basis
 | otherwise = (if (f (head li)) then 1 else 0)
               + (countIf (tail li) f) -- rekurens

isEven n = (mod n 2)==0

isZero n = (n==0)

isMultOf5 n = (mod n 5)==0

isCond n = (n==0)
         || (n>=51)&&(n<=100)&&((mod n 2)==0)
         || ((mod n 2)/=0)&&((mod n 5)/=0)&&((mod n 3)==0)

isEmpty li = null li