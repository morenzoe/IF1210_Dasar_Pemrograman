-- DEFINISI DAN SPESIFIKASI
splitList :: [Int] -> ([Int],[Int])
{- splitList li menghasilkan 2 list of integer, 
list pertama memuat bilangan positif dan 0 yang 
merupakan elemen dari li (dengan urutan kemunculan 
yang tidak berubah), sedangkan list kedua memuat 
bilangan negatif elemen li. -}
{- Prekondisi: li mungkin kosong -}

-- FUNGSI TRANSISI
nonNegatif :: [Int] -> [Int]
-- nonNegatif(li) akan mengembalikan li tanpa 
-- integer negatif.

allNegatif :: [Int] -> [Int]
-- allNegatif(li) akan mengembalikan li dengan 
-- hanya integer negatif.

-- REALISASI
splitList li = (nonNegatif li, allNegatif li)

nonNegatif li
 | (null li) = []
 | (head li>=0) = [head li] ++ nonNegatif (tail li)
 | otherwise = [] ++ nonNegatif (tail li)

allNegatif li
 | (null li) = []
 | (head li<0) = [head li] ++ allNegatif (tail li)
 | otherwise = [] ++ allNegatif (tail li)
