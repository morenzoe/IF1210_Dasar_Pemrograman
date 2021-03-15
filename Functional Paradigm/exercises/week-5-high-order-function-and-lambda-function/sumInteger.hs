--DEFINISI DAN SPESIFIKASI
sumInteger :: Int -> Int -> (Int -> Bool) -> Int
{- sumInteger a b f akan memberikan jumlah
   bilangan dari a ke b yang sesuai dengan
   filter f. -}

gtThan5 :: Int -> Bool
-- gtThan5 x menghasilkan True jika x>5.

isGenap :: Int -> Bool
-- isGenap x menghasilkan True jika x genap.

--REALISASI
sumInteger a b f
 | a>b = 0 --basis
 | otherwise = (if (f a) then a else 0) + sumInteger (a+1) b f -- rekurens

gtThan5 x = x>5

isGenap x = (mod x 2) == 0

{- Ekspresi lambda

 > sumInteger 1 100 (\x->((mod 100 x)==0))
 217

 > sumInteger 1 100 (\x->((mod x 2)==0)&&((mod x 10)==0)||((mod x 2)/=0)&&((mod x 5)==0))
 1050

 > sumInteger 25 25 (\x->x<10)
  0
-}