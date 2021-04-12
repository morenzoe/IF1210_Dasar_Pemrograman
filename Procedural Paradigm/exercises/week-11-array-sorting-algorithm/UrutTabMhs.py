# NOTASI ALGORITMIK
'''
Program UrutNilai
{ mengurutkan nilai pada array data mahasiswa }

KAMUS
type TMahasiswa : < NIM : string; 
                    Nama : string;
                    Nilai : integer[0..100] >
type TabMhs : < TM : array [1..Neff] of TMahasiswa;
                Neff : integer[0..NMax] { nilai efektif TabMhs } >

procedure UrutTabMhs (input/output TMhs : TabMhs)
{ I.S. TMhs sudah terdefinisi
  F.S. TMhs terurut mengecil pada atribut Nilai }

KAMUS LOKAL
   i : integer
﻿﻿﻿   Pass : integer
   Temp : TMahasiswa
   IMax : integer

ALGORITMA
   if (TMhs.Neff > 1) then
      Pass traversal [1..TMhs.Neff-1]
      { Menentukan indeks elemen maksimum[Pass..TMhs.Neff] }
      IMax <- Pass
      i <- Pass + 1
      while (i <= TMhs.Neff) do
         if (TMhs.TM[IMax].Nilai < TMhs.TM[i].Nilai) then
            IMax <- i
         i <- i + 1
      { TMhs.TM[IMax].Nilai adalah maksimum TMhs.TM[Pass..TMhs.Neff].Nilai }
      { Tukar TMhs.TM[IMax] dengan TMhs.TM[Pass] }
         if (Pass ≠ IMax) then
            Temp  <- TMhs.TM[IMax]
            TMhs.TM[IMax] <- TMhs.TM[Pass]
            TMhs.TM[Pass] <- Temp
      { TMhs.TM[1..Pass].Nilai terurut TMhs.TM[1].Nilai >= TMhs.TM[2].Nilai >= ... >= TMhs.TM[Pass].Nilai }
   { Seluruh tabel terurutberdasarkan elemen Nilai: TMhs[1].Nilai >= TMhs[2].Nilai>= ...>=TMhs[TMhs.Neff].Nilai }