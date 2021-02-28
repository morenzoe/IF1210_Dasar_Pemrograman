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