-- DEFINISI DAN SPESIFIKASI PRIMITIF LIST 
-- KONSTRUKTOR
konso :: Float -> [Float] -> [Float]
{- konso e li menghasilkan sebuah list of 
   float dari e dan li dengan e sebagai 
   elemen pertama. -}

konsDot :: [Float] -> Float -> [Float]
{- konsDot li e menghasilkan sebuah list 
   of float dari li dan e dengan e sebagai 
   elemen terakhir. -}

-- SELEKTOR
-- head : [Float] -> Float
{- head l menghasilkan elemen pertama list l, 
   l tidak kosong -}

-- tail : [Float] -> [Float]
{- tail l menghasilkan list tanpa elemen 
   pertama list l, l tidak kosong -}

-- last : [Float] -> Float
{- last l menghasilkan elemen terakhir list l, 
   l tidak kosong -}

-- init : [Float] -> [Float]
{- init l menghasilkan list tanpa elemen 
   terakhir list l, l tidak kosong -}

-- PREDIKAT
isEmpty :: [Float] -> Bool
{- isEmpty l True jika list of elemen l 
   kosong, False jika tidak. -}

isOneElmt :: [Float] -> Bool
{- isOneElmt l True jika list of integer l 
   hanya mempunyai satu elemen, False jika 
   tidak. -}

-- REALISASI FUNGSI PRIMITIF LIST
konso e l = [e] ++ l

konsDot l e = l ++ [e]

isEmpty l = null l

isOneElmt l = (length l)==1

-- DEFINISI DAN SPESIFIKASI FUNGSI
offsetList :: (Float->Float) -> (Float->Float) -> Float -> Float -> [Float]
{- offsetList f g a b akan membuat list of float
   yang berisi hasil fungsi f terhadap nilai 
   dari a sampai b dengan increment sesuai 
   fungsi g. -}

-- REALISASI
offsetList f g a b
 | (a>b) = []
 | otherwise = konso (f a) (offsetList f g (g a) b)

-- APLIKASI
-- offsetList (\x->x) (\x->x+2) 1.2 7.1
-- [1.2,3.2,5.2]
-- offsetList (\x-> if (x<0) then (-999) else x+3.2) (\x->x+0.5) (-1.0) 1.0
-- [-999.0,-999.0,3.2,3.7,4.2]
-- offsetList (\x->x*x) (\x->x+1) 0.0 9.0
-- [0.0,1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0]