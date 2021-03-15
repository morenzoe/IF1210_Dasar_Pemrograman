-- KLASIFIKASI KATEGORI WAHANA            tesKategori(t,b,k)
module TesKategori where
-- DEFINISI DAN SPESIFIKASI
     tesKategori :: Int -> Int -> Int -> Bool
{-   tesKategori(t,b,k) adalah fungsi validasi kategori
     wahana berdasarkan tinggi dan berat badan. Input
     fungsi integer positif. 1 adalah kategori kendaraan 
     yang paling tidak berbahaya, sementara 4 adalah kategori 
     paling berbahaya.  -}

-- REALISASI
     tesKategori t b k
          | (t>100)&&(b<=150)           = (k==2) || (k==3) || (k==4)
          | (t<=100)&&(b>30)&&(b<=150)  = (k==1) || (k==2)
          | (t<=100)&&(b<=150)          = (k==1)
          | (t<=100)&&(b>150)           = (k==2)       
          | (t>100)&&(t<=200)&&(b>150)  = (k==2) || (k==3)
          | otherwise                   = (k==0)

-- APLIKASI
-- tesKategori 120 80 1