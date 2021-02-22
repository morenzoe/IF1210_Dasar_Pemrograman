-- PENENTU KUADRAN 			kuadran(x,y)

-- DEFINISI DAN SPESIFIKASI
kuadran :: Int -> Int -> Int
{-	kuadran(x,y) adalah fungsi yang akan 
	mengembalikan nomor kuadran berdasarkan 
	suatu koordinat integer. -}

-- REALISASI
kuadran x y
	| (x>=0)&&(y>=0) = 1
	| (x<0)&&(y>=0) = 2
	| (x<0)&&(y<0) = 3
	| (x>=0)&&(y<0) = 4

-- APLIKASI
-- kuadran 1 2
-- 1
-- kuadran (-1) (-2)
-- 4

