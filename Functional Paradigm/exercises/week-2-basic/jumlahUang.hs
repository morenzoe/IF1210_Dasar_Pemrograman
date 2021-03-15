-- PENYEDERHANA JUMLAH UANG                                      jumlahUang(q,d,n,p)

-- DEFINISI DAN SPESIFIKASI
jumlahUang :: Int -> Int -> Int -> Int -> (Int, Int)
{-  jumlahUang(q,d,n,p) mengubah semua satuan uang menjadi sen dan 
    menyederhanakannya menjadi dollar dengan konversi 1 quarter = 25 sen,
    1 dime = 10 sen, 1 nickel = 5 sen, dan 1 penny = 1 sen, 1 dollar = 100 sen -}

-- PREKONDISI
-- input adalah integer positif

-- REALISASI
jumlahUang q d n p =
    let sen = q*25 + d*10 + n*5 + p 
    in (div sen 100, mod sen 100)

-- APLIKASI
-- jumlahUang 1 2 3 4