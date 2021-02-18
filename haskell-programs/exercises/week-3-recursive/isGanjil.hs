-- PENGECEK GANJIL                                               isGanjil(x)

-- DEFINISI DAN SPESIFIKASI
isGanjil :: Int -> Bool
{-  isGanjil(x) merupakan predikat untuk memeriksa 
    apakah sebuah bilangan integer (>= 0) merupakan bilangan ganjil -}

-- PREKONDISI
-- input integer positif

-- REALISASI
isGanjil x
    | (x==1) = True                 -- basis
    | (x==0) = False                -- basis
    | otherwise = isGanjil (x-2)    -- rekurens

-- APLIKASI
-- isGanjil 2