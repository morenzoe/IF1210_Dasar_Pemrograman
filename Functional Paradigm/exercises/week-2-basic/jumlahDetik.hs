-- PENJUMLAH DETIK                                jumlahDetik(j,m,d)

-- DEFINISI DAN SPESIFIKASI
jumlahDetik :: Int -> Int -> Int -> Int
{-  jumlahDetik(j,m,d) menghasilkan jumlah detik yang berlalu hingga 
    suatu waktu terhitung sejak 0:0:0 -}

-- PREKONDISI
-- input jam diasumsikan valid

-- REALISASI
jumlahDetik j m d = j*3600 + m*60 + d 

--APLIKASI
-- jumlahDetik 12 40 30