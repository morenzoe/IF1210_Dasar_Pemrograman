-- DEFINISI DAN SPESIFIKASI PRIMITIF LIST 
-- KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e li menghasilkan sebuah list of integer dari e dan li dengan e sebagai    elemen pertama -}
konsDot :: [Char] -> Char -> [Char]
{- konsDot li e menghasilkan sebuah list of integer dari li dan e dengan e sebagai
elemen terakhir -}
-- SELEKTOR
-- head : [Int] -> Int
{- head l menghasilkan elemen pertama list l, l tidak kosong -}
-- tail : [Int] -> [Int]
{- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong -}
-- last : [Int] -> Int
{- last l menghasilkan elemen terakhir list l, l tidak kosong -}
-- init : [Int] -> [Int]
{- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong -}
-- PREDIKAT
isEmpty :: [Int] -> Bool
{- isEmpty l true jika list of elemen l kosong, false jika tidak -}
isOneElmt :: [Int] -> Bool
{- isOneElmt l true jika list of integer l hanya mempunyai satu elemen, false jika tidak -}

-- REALISASI FUNGSI PRIMITIF LIST
konso e l = [e] ++ l

konsDot l e = l ++ [e]

isEmpty l = null l

isOneElmt l = (length l)==1

-- DEFINISI DAN SPESIFIKASI
rekapNilai :: [Int] -> (Int -> Char) -> (Char -> Bool)  -> ([Char], Int)
{- rekapNilai li f g akan mengembalikan tuple rekapan berisi list
    of character hasil konversi nilai angka menjadi indeks huruf
    sesuai dengan konversi fungsi f dan jumlah elemen yang
    memiliki nilai pada indeks yang lulu berdasarkan fungsi g. 
    Prekondisi: elemen li diantara 0 sampai 100, li bisa kosong. -}

-- REALISASI
rekapNilai li f g
 | (isEmpty li) = ([],0) -- basis
 | otherwise = let -- rekurens
                (list_of_char, jumlah) = rekapNilai (tail li) f g
               in
                (konso (f (head li)) list_of_char, if (g (f (head li))) then (jumlah+1) else jumlah)

-- APLIKASI
-- rekapNilai [70,41,80,81,66,94,100,57,60] (\x-> if (x>=85) then 'A' else if ((70<=x)&&(x<85)) then 'B' else if  ((57<=x)&&(x<70)) then 'C' else if ((40<=x)&&(x<57)) then 'D' else 'E') (\y-> (y=='A')||(y=='B')||(y=='C')||(y=='D'))
-- (['B','D','B','B','C','A','A','C','C'], 9)
