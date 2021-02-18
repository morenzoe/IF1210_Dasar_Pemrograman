-- PENGHITUNG FAKTORIAL             faktorial(x)

-- DEFINISI DAN SPESIFIKASI
faktorial :: Int -> Int
{-  faktorial(x) adalah fungsi yang akan menghitung nilai x!
    dari input integer dengan basis x=0. -}

-- REALISASI    
faktorial x
    | (x==0)    = 1                     -- basis
    | otherwise = faktorial (x-1) * x   -- rekurens

-- APLIKASI
-- faktorial 6