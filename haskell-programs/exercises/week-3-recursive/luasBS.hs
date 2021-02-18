--  PENGHITUNG LUAS BUJUR SANGKAR           luasBS(s)

-- DEFINISI DAN SPESIFIKASI
luasBS :: Int -> Int
{-  luasBS(s) merupakan fungsi untuk menghitung 
    luas bujur sangkar dengan panjang sisi s -}

-- REALISASI
luasBS s
    | (s==1)    = 1                      -- basis
    | otherwise = luasBS (s-1) + (2*s-1)  -- rekurens


-- APLIKASI
-- luasBS 20