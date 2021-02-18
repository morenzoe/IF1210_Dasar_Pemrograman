--DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [<type_elemen>] -> Bool
--isEmpty(l) true jikalist of elemenl kosong

--REALISASI
isEmpty l = null 

--DEFINISI DAN SPESIFIKASI PREDIKAT
lisOneElmt :: [<type_elemen>] -> Bool
{-  isOneElmt(l) true jikalist of integer l hanya
    mempunyaisatuelemen -}

--REALISASI
isOneElmt l = (length l) == 1