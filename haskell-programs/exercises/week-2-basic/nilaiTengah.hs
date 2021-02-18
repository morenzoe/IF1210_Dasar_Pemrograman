-- PENCARI NILAI TENGAH                         nilaiTengah(a,b,c)

--DEFINISI DAN SPESIFIKASI
nilaiTengah :: Int -> Int -> Int -> Int
{-  nilaiTengah(a,b,c) mencari nilai dari tiga integer yang jika 
    diurutkan berada di tengah -}
min2:: Int -> Int -> Int
-- min(a,b) mencari nilai minimum dari dua nilai
maks2:: Int -> Int -> Int
-- maks2(a,b) mencari nilai maksimum dari dua nilai
min3:: Int -> Int -> Int -> Int
-- min3(a,b,c) mencari nilai minimum dari tiga nilai
maks3:: Int -> Int -> Int -> Int
-- maks3(a,b,c) mencari nilai maksimum dari tiga nilai

--REALISASI
min2 a b = if a>b then b else a
maks2 a b = if a<b then b else a
min3 a b c = min2 a (min2 b c)
maks3 a b c = maks2 a (maks2 b c)

nilaiTengah a b c = a+b+c - maks3 a b c - min3 a b c

-- APLIKASI
-- nilaiTengah 4 9 5