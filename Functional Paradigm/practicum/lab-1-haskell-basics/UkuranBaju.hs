-- KLASIFIKASI UKURAN BAJU                                  ukuranBaju(t,b)
module UkuranBaju where
-- DEFINISI DAN SPESIFIKASI
     ukuranBaju :: Int -> Int -> Int
{-   ukuranBaju(t,b) adalah program untuk klasifikasi ukuran baju
     berdasarkan tinggi badan dalam cm dan berat badan dalam kg. 
     Program menerima input integer positif. Keterangan ukuran 
     1 adalah M, 2 adalah L, 3 adalah XL, 4 adalah tidak mendapatkan 
     kaos. -}

-- REALISASI
     ukuranBaju t b 
          | (t<=150)                    = 1  -- ukuran M
          | (t>150)&&(t<=170)&&(b<=80)  = 2  -- ukuran L
          | (t>170)&&(b<=60)            = 2  -- ukuran L
          | (t>150)&&(t<=170)&&(b>80)   = 3  -- ukuran XL
          | (t>170)&&(b>60)&&(b<=80)    = 3  -- ukuran XL
          | otherwise                   = 4  -- tidak mendapatkan kaos

-- APLIKASI
-- ukuranBaju 160 75