-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
isKabisat :: Int -> Bool
{- isKabisat y menghasilkan True jika y adalah
   tahun kabisat. Tahun disebut kabisat jika
   tahun tersebut habis dibagi 4, tetapi tidak
   habis dibagi 100, atau tahun yang habis dibagi
   400. -}

-- REALISASI FUNGSI ANTARA
isKabisat y = ((mod y 4)==0)&&((mod y 100)/=0)||((mod y 400)==0)

-- DEFINISI DAN SPESIFIKASI
hitungKabisat :: Int -> Int -> Int
{- hitungKabisat a b menghasilkan banyaknya
   tahun kabisat dari tahun a sampai tahun b. -}

-- REALISASI
hitungKabisat a b
 | (a>b) = 0
 | otherwise = hitungKabisat (a+1) b + if (isKabisat a) then 1 else 0

-- APLIKASI
-- hitungKabisat 1 20
-- 5
-- hitungKabisat 2000 2000
-- 1
-- hitungKabisat 11109 11111
-- 0
-- hitungKabisat 10 5
-- 0