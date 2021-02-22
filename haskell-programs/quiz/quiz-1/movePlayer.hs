-- BOARD GAME 				movePlayer(a,n)

-- DEFINISI DAN SPESIFIKASI
movePlayer :: Int -> Int -> Int 
{-	movePlayer(a,n) adalah fungsi rekurens yang
	akan mengembalikan posisi pemain yang baru. 
	Posisi lama pemain adalah input integer a dan
	langkah yang diambil pemain adalah integer n. -}
-- Prekondisi/asumsi: 1<=a<=40, 2<=n<=12

-- REALISASI
movePlayer a n
 | (n==0) = a -- basis
 | otherwise = movePlayer (nextSpace a) (n-1) -- rekurens

-- APLIKASI
-- movePlayer 40 2

-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
nextSpace :: Int -> Int
{-	nextSpace(a) adalah fungsi yang akan memberikan
	satu posisi setelah posisi pemain sekarang
	yaitu input integer a. Jika pemain berada di 
	posisi 40, posisi berikutnya adalah 1. -}
-- Prekondisi/asumsi: 1<=a<=40

-- REALISASI
nextSpace a
 | (a==40) = 1
 | otherwise = a+1