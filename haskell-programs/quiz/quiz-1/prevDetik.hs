-- PENGHITUNG SATU DETIK LALU	prevDetik(j,m,d)

-- DEFINISI DAN SPESIFIKASI
prevDetik :: Int -> Int -> Int -> (Int, Int, Int)
{-	prevDetik(j,m,d) adalah fungsi yang akan
	menerima integer positif berupa jam, menit, 
	dan detik sebagai waktu saat ini dan 
	memberikan tuple berisi integer positif 
	berupa jam, menit, dan detik pada 1 detik 
	sebelumnya. -}
-- Prekondisi/asumsi: 0<=j<=23, 0<=m<=59, 0<=d<=59


-- REALISASI
prevDetik j m d
 | (j==0)&&(m==0)&&(d==0) = (23, 59, 59)
 | (m==0)&&(d==0) = (j-1, 59, 59)
 | (d==0) = (j, m-1, 59)

-- APLIKASI
-- prevDetik 23 59 59