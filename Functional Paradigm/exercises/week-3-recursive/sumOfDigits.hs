-- PENJUMLAH DIGIT                        sumOfDigits(n)

-- DEFINISI DAN SPESIFIKASI
sumOfDigits :: Int -> Int
{-  sumOfDigits(n) adalah fungsi yang menghitung hasil 
    penjumlahan dari setiap bilangan tunggal yang terdapat 
    di dalam sebuah bilangan integer positif. -}
sumOfDigitsPosNeg :: Int -> Int
{-  sumOfDigitsPosNeg(n) adalah fungsi yang menghitung hasil 
    penjumlahan dari setiap bilangan tunggal yang terdapat 
    di dalam sebuah bilangan integer positif atau negatif. -}

-- REALISASI
sumOfDigits n 
    | (n<=9)    = n                                     -- basis
    | otherwise = sumOfDigits (div n 10) + (mod n 10)   -- rekurens                               

sumOfDigitsPosNeg n 
    | (n>0)     = sumOfDigits n
    | otherwise = sumOfDigits ((-1)*n)
    
-- APLIKASI
-- sumOfDigits 176
-- sumOfDigitsPosNeg -234