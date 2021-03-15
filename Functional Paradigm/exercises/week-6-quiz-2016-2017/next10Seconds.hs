-- DEFINISI DAN SPESIFIKASI
next10Seconds :: Int -> Int -> Int -> (Int,Int,Int)
{- next10Seconds j m d akan mengembalikan tuple
   berisi waktu 10 detik setelah j:m:d.
   Prekondisi: 0<=j<=23, 0<=m<=59, 0<=d<=59. -}

-- REALISASI
next10Seconds j m d = if (d>=50) then
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
--  next10Seconds 2 59 55
-- (3,0,5)
-- next10Seconds 1 10 10
-- (1,10,20)
-- next10Seconds 23 59 59
-- (0,0,9)
-- next10Seconds 12 7 57
-- (12,8,7)