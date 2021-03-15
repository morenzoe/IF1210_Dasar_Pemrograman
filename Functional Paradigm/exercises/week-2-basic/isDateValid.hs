-- VALIDASI TANGGAL                      isDateValid(d,m,y)
-- DEFINISI DAN SPESIFIKASI
isDateValid ::  Int -> Int -> Int -> Bool
{- isDateValid(d,m,y) mengembalikan nilai true jika 
   d, m, y membentuk date yang valid. Definisi date yang 
   valid adalah jika elemen hari (d) bernilai antara 1 
   dan 31, tergantung pada bulan dan apakah tahun kabisat 
   atau bukan, elemen bulan (m) bernilai antara 1 dan 12, 
   dan elemen tahun (y) bernilai antara 0 dan 99.
   Nilai y mewakili tahun 1900 s.d. 1999 -}

-- FUNGSI ANTARA
isKabisat :: Int -> Bool 
{-  isKabisat(d,m,y) mengembalikan nilai true jika y dapat
    dibagi 400 atau dapat dibagi 4 tetapi tidak dapat
    dibagi 100-}

-- REALISASI
{-  tahun kabisat adalah tahun yang habis dibagi 400, 
    atau tahun yang habis dibagi 4 tetapi tidak habis dibagi 100 -}
isKabisat y = (mod (y+1900) 400 == 0) || ((mod (y+1900) 4 == 0) && (mod (y+1900) 100 /= 0))
-- && dihitung terlebih dahulu baru ||
isDateValid d m y 
    -- bulan dengan tanggal 31
    | (m==1)||(m==3)||(m==5)||(m==7)||(m==8)||(m==10)||(m==10) 
        = (d>=1)&&(d<=31)&&(y>=0)&&(y<=99)
    -- bulan dengan tanggal 30
    | (m==4)||(m==6)||(m==9)||(m==12) 
        =(d>=1)&&(d<=30)&&(y>=0)&&(y<=99)
    -- bulan februari
    | m==2 
        = (d>=1)&&(if isKabisat y then (d<=29) else (d<=28) &&(y>=0)&&(y<=99))

-- APLIKASI
-- isDateValid 29 2 2002