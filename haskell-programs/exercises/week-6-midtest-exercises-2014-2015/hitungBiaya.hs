-- DEFINISI DAN SPESIFIKASI
hitungBiaya :: Int-> Int-> Int-> Bool -> Int 
{- hitungBiaya k h s a menghasilkan besar biaya yang
   harus dibayar oleh seorang pasien rawat inap dengan
   status keanggotaan a yang menginap pada kamar kelas
   k selama h hari, menggunakan s orang dokter spesialis.
   k bernilai [1..3], h >= 0, s >= 0 
   Ketentuan perhitungan biaya adalah sbb:
   Biaya yang harus dibayarkan oleh pasien terdiri dari
   dua komponen, yaitu biaya kamar dan biaya dokter spesialis
   (dokteryang bukan spesialis dianggap bagian dari biaya 
   kamar). Biaya kamar bervariasi berdasarkan kelasnya: 
   Kelas1 = Rp. 750.000,-/hari
   Kelas2 = Rp. 600.000,-/hari
   Kelas3 = Rp. 400.000,-/hari
   Biaya dokter spesialis adalah Rp. 1.500.000,-per dokter
   setiap kali menginap (tidak memperhitungkan jumlah hari).
   Bagi pasien yang merupakan Anggota(a = true), maka berhak
   atas potongan 20% dari biaya kamar dan potongan 10% dari
   biaya dokter spesialis. -}

-- REALISASI
hitungBiaya k h s a
 | a = 150000*s + h * if (k==1) then
                       600000
                      else if (k==2) then
                       480000
                      else
                       320000
 | otherwise = 1500000*s + h * if (k==1) then
                                750000
                               else if (k==2) then
                                 600000
                               else
                                 400000                                

-- APLIKASI
-- hitungBiaya 1 1 1 True
-- 750000