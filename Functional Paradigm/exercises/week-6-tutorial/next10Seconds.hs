-- DEFINISI DAN SPESIFIKASI
next10Seconds :: Int -> Int -> Int -> (Int,Int,Int)
{- next10Seconds j m d akan mengembalikan sebuah
   tuple berisi tiga integer yang mewakili jam
   menit dan detik setelah 10 detik berlalu sejak input.
   Prekondisi: 0<=j<=23, 0<=m<=59, 0<=d<=59. -}

-- REALISASI
next10Seconds j m d = if ((d+10)>=60) then
                       if (m==59) then
                        if (j==23) then
                         (0,0,d+10-60)
                        else
                         (j+1,0,d+10-60)
                       else
                        (j,m+1,d+10-60)
                      else
                       (j,m,d+10)

-- APLIKASI
-- next10Seconds 14 50 55
-- (14,51,5)