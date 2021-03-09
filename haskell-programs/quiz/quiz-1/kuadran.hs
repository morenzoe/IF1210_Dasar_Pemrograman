-- PENENTU KUADRAN 			kuadran(x,y)

-- DEFINISI DAN SPESIFIKASI
kuadran :: Int -> Int -> String
{-	kuadran(x,y) adalah fungsi yang akan 
	mengembalikan nomor kuadran berdasarkan 
	suatu koordinat integer. -}

-- REALISASI
kuadran x y
	| (x>=0)&&(y>=0) = "Kuadran 1"
	| (x<0)&&(y>=0) = "Kuadran 2"
	| (x<0)&&(y<0) = "Kuadran 3"
	| (x>=0)&&(y<0) = "Kuadran 4"

-- APLIKASI
-- kuadran 1 2
-- "Kuadran 1"
-- kuadran (-1) (-2)
-- "Kuadran 4"

