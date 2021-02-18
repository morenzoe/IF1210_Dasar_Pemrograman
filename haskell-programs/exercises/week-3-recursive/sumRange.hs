-- PENJUMLAH RANGE                    sumRange(a,b)

-- DEFINISI DAN SPESIFIKASI
sumRange :: Int -> Int -> Int
{-  sumRange(a,b) adalah fungsi yang menerima masukan 
    2 bilangan integer, misalnya a dan b yang menyatakan 
    rentang bilangan dengan syarat: a <= b; a dan b 
    bilangan positif; dan menghasilkan penjumlahan semua 
    bilangan dari a s.d. b. -}

-- PREKONDISI
-- a<=b

-- REALISASI
sumRange a b
    | (b==a) = a
    | otherwise = sumRange a (b-1) + b


-- APLIKASI
-- sumRange 2 4