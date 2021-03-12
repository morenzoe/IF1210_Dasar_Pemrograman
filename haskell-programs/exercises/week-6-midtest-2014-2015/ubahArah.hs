-- DEFINISI DAN SPESIFIKASI
ubahArah :: Int -> Int -> Int
{- ubahArah s r adalah fungsi yang menerima masukan 
   dua buah integer s dan r yang merepresentasikan 
   arah pergerakan dan besar perubahan arah yang 
   akan dilakukan (dalam satu derajat). Fungsi 
   mengembalikan arah pergerakan yang baru dalam range 
   0 s.d. 359, setelah s diputar sebesar r. -}

-- REALISASI
ubahArah s r = mod (s+r) 360

-- APLIKASI
-- ubahArah 150 100
-- 250
-- ubahArah (-480) 60
-- 300