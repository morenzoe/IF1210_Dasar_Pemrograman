--DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso:: <type_elemen>-> [<type_elemen>] -> [<type_elemen>]
{-  konso(e,l) menghasilkan sebuah list dari e (sebuah--elemen) 
    dan l (list of elemen), dengan e sebagai elemen pertama: 
    e o l -> l' -}

--REALISASI
konso e l = [e] ++ l

konsDot:: [<type_elemen>]-> <type_elemen>-> [<type_elemen>]
{-  konsDot(l,e) menghasilkan sebuah list dari l (list of
    elemen) dan e (sebuah elemen), dengan e sebagai elemen terakhir: 
    l •e -> l' -}

--REALISASI
konsDot l e = l ++ [e]

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

--DEFINISI DAN SPESIFIKASI SELEKTOR

--head : [<type_elemen>] -><type_elemen>
--head(l) menghasilkan elemen pertama list l, 
--l tidak kosong

--tail : [<type_elemen>] ->[<type_elemen>]
--tail(l) menghasilkan list tanpa elemen pertama list l, 
--l tidak kosong

--last : [<type_elemen>]-><type_elemen>
--last(l) menghasilkan elemen terakhir list l, 
--l tidak kosong

--init: [<type_elemen>]->[<type_elemen>]
--init(l) menghasilkan list tanpa elemen terakhir list l,
--l tidak kosong