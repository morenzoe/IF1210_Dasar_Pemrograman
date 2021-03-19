-- JUDUL                    nbKelipatanX(m,n,x)
module NbKelipatanX where
-- DEFINISI DAN SPESIFIKASI
     nbKelipatanX :: Int -> Int -> Int -> Int
{-   nbKelipatanX(m,n,x) adalah fungsi menghasilkan 
     banyaknya bilangan kelipatan x di antara m dan n 
     (m dan n termasuk) dengan menggunakan ekspresi 
     rekursif. -}

-- REALISASI
     nbKelipatanX m n x =
          if m==n 
               then if (mod n x)==0 
                    then 1 
                    else 0
          else if (mod n x)==0 
               then nbKelipatanX m (n-1) x + 1
               else nbKelipatanX m (n-1) x

-- APLIKASI
-- nbKelipatanX 5 14 3