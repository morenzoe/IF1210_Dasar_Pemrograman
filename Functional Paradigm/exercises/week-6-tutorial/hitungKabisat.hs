-- DEFINISI DAN SPESIFIKASI
hitungKabisat :: Int -> Int -> Int
{- hitungKabisat a b menghasilkan banyaknya tahun
   kabisat mulai tahun a hingga tahun b (a dan b
   termasuk). Harus direalisasikan dengan ekspresi
   rekursif dan harus menggunakan fungsi isKabisat. -}

isKabisat :: Int -> Bool
{- isKabisat y menghasilkan True jika y adalah tahun 
   kabisat. Tahun disebut kabisat jika tahun tersebut
   habis dibagi 4, tetapi tidak habis dibagi 100, atau
   tahun yang habis dibagi 400. -}

-- REALILSASI
hitungKabisat a b
 | (a>b) = 0 -- basis
 | otherwise = (hitungKabisat (a+1) b) + if (isKabisat a) then 1 else 0 -- rekurens

isKabisat y = if ((mod y 4)==0)&&((mod y 100)/=0)
                 ||((mod y 400)==0) then True
              else False

-- APLIKASI
-- 