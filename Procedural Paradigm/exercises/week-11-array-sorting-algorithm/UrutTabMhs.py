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

ALGORITMA
 procedure UrutTabMhs (input/output TMhs : TabMhs)
{ I.S. TMhs sudah terdefinisi
  F.S. TMhs terurut mengecil pada atribut Nilai }
if (TMhs.Neff > 1) then
   Pass traversal [1..TMhs.Neff-1]
      { Menentukan indeks elemen minimum [Pass..TMhs.Neff] }
      IMin <- Pass
      i traversal [Pass+1..TMhs.Neff]
         if (TMhs.TM[IMin].Nilai < TMhs.TM[i].Nilai) then         
            IMin <- i
      { TMhs.TM[IMin].Nilai adalah minimum TMhs.TM[Pass..N].Nilaii }
      { Tukar TMhs.TM[IMin].Nilai dengan TMhs.TM[Pass].Nilai }
      Temp <- TMhs.TM[IMin].Nilai
      TMhs.TM[IMin].Nilai <- TMhs.TM[Pass].Nilai
      TMhs.TM[Pass].Nilai <- Temp
      { TMhs.TM[1..Pass].Nilai terurut TMhs.TM[1].Nilai <= TMhs.TM[2].Nilai <= ... <= TMhs.TM[Pass].Nilai }
{Seluruh tabel terurut, TMhs.TM[1].Nilai <= TMhs.TM[2].Nilai <= ... <= TMhs.TM[TMhs.Neff].Nilai }
