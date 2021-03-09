-- DEFINISI DAN SPESIFIKASI
prevNSeconds :: Int -> Int -> Int -> Int -> (Int,Int,Int)
{- prevNeconds j m d n menghasilkan tuple (j1,m1,d1) yang
   merupakan waktu n detik sebelum pukul j:m:d.
   Prekondisi: 0<=j<=23, 0<=m<=59, 0<=d<=59. -}

prevSecond :: Int -> Int -> Int -> (Int,Int,Int)
{- prevSecond j m d menghasilkan tuple (j1,m1,d1) yang
   merupakan waktu 1 detik sebelum pukul j:m:d.
   Prekondisi: 0<=j<=23, 0<=m<=59, 0<=d<=59. -}

-- REALISASI
prevNSeconds j m d n
 | (n==0) = (j,m,d) -- basis
 | otherwise = let -- rekurens
                (j1,m1,d1) = prevSecond j m d
               in
                prevNSeconds j1 m1 d1 (n-1)

prevSecond j m d = if (d==0) then
                     if (m==0) then
                      if (j==0) then
                       (23,59,59)
                      else
                       (j-1,59,59)
                     else
                      (j,m-1,59)
                    else
                     (j,m,d-1) 

-- APLIKASI
-- prevNSeconds 3600
-- (23,0,0)