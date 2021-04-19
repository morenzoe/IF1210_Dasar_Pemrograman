# NOTASI ALGORITMIK
'''
Program MergingAND
{ Input : dua arsip sekuensial berisi NIM dan nilai mahasiswa, terurut, sejenis }
{ Proses : menggabungkan kedua arsip menjadi sebuah arsip yang terurut versi AND }
{ Output : file sekuensial baru yang terurut }

KAMUS
   type keytype : string
   type valtype : integer
   type rekamanMHS : < NIM : keytype, nilai : valtype>
   constant mark : rekamanMHS = <99999999, 99>
   RekInMHS : rekamanMHS
   RekOutMHS : rekamanMHS
   DataIn1Mhs : SEQFILE of
                (*) RekMHS : rekamanMHS
                (1) mark
   DataIn2Mhs : SEQFILE of
                (*) RekMHS : rekamanMHS
                (1) mark
   DataOutMhs : SEQFILE of
                (*) RekMHS : rekamanMHS
                (1) mark
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = mark }

ALGORITMA
   assign (DataIn1MHS, "rekmhs1.dat")
   open (DataInMHS, RekIn1MHS)
   assign (DataIn2MHS, "rekmhs2.dat")
   open (DataInMHS, RekIn2MHS)
   assign (DataOutMHS, "rekmhs.dat")
   rewrite (DataOutMHS)

   while (EOP(RekIn1MHS)) or (EOP(RekIn2MHS)) do
      if (RekIn1MHS.NIM <= RekIn2MHS.NIM) then
         write (DataOutMHS, RekIn1MHS)
         read (DataIn1MHS, RekIn1MHS)
      else { RekIn1MHS.NIM > RekIn2MHS.NIM }
         write (DataOutMHS, RekIn2MHS)
         read (DataIn2MHS, RekIn2MHS)
   { EOP(RekIn1MHS)) = false or EOP(RekIn2MHS) = false }

   { Menyalin sisa data pada DataIn1MHS }
   while (EOP(RekIn1MHS)) do
         write (DataOutMHS, RekIn1MHS)
         read (DataIn1MHS, RekIn1MHS)
   { Akhir DataIn1MHS EOP(RekIn1MHS)) = false }

   { Menyalin sisa data pada DataIn2MHS }
   while (EOP(RekIn2MHS)) do
         write (DataOutMHS, RekIn2MHS)
         read (DataIn2MHS, RekIn2MHS)
   { Akhir DataIn2MHS EOP(RekIn2MHS)) = false }

   close (DataIn1MHS)
   close (DataIn2MHS)
   close (DataOutMHS)

{ REALISASI FUNGSI }
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = Mark }
     if rek.NIM = 99999999 and rek.nilai = 99 then
         -> false
      else
         -> true
'''