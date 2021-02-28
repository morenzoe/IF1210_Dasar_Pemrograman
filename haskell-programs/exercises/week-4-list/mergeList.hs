-- DEFINISI DAN SPESIFIKASI
mergeList:: [Int] -> [Int] -> [Int]
{- mergeList li1 li2 menghasilkan list of integer yang 
   merupakan hasil penggabungan li1 dan li2, dan tetap 
   terurut membesar. 
   Prekondisi: li1 dan li2 adalah list terurut membesar 
   dan mungkin kosong -}

-- FUNGSI ANTARA
isEmpty :: [Int] -> Bool
-- Fungsi isEmpty(li) akan memberikan True
-- jika list kosong dan sebaliknya.

konso :: Int -> [Int] -> [Int]
-- konso(e,li) menghasilkan sebuah list dari lh (sebuah elemen)
-- dan li (list of Int), dengan e sebagai elemen pertama:
-- e o li -> li'


-- REALISASI
mergeList li1 li2
 | (isEmpty li1)&&(isEmpty li2) = [] -- basis 1
 | (isEmpty li1) = li2 -- basis 2
 | (isEmpty li2) = li1 -- basis 3
 | (head li1)<(head li2) = konso (head li1) (mergeList (tail li1) li2) -- rekurens 1
 | (head li2)<(head li1) = konso (head li2) (mergeList (tail li2) li1) -- rekurens 2
 | otherwise = konso (head li2) (mergeList (tail li2) li1) -- rekurens 3 (ketika sama besar, bisa ambil yang mana saja)


konso e li = [e] ++ li

isEmpty li = null li


