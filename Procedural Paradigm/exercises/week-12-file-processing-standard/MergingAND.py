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
   DataIn1Mhs : SEQFILE of
                (*) RekIn1MHS : rekamanMHS
                (1) mark
   DataIn2Mhs : SEQFILE of
                (*) RekIn2MHS : rekamanMHS
                (1) mark
   DataOutMhs : SEQFILE of
                (*) RekMHS : rekamanMHS
                (1) mark
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = mark }

ALGORITMA
   assign (DataIn1MHS, "rekmhs1.dat")
   open (DataInMHS, RekIn1MHS) { First-Elmt }
   assign (DataIn2MHS, "rekmhs2.dat")
   open (DataInMHS, RekIn2MHS) { First-Elmt }
   assign (DataOutMHS, "rekmhs.dat")
   rewrite (DataOutMHS)

   while not (EOP(RekIn1MHS)) or (EOP(RekIn2MHS)) do
      if (RekIn1MHS.NIM <= RekIn2MHS.NIM) then
         write (DataOutMHS, RekIn1MHS)
         read (DataIn1MHS, RekIn1MHS) { Next-Elmt }
      else { RekIn1MHS.NIM > RekIn2MHS.NIM }
         write (DataOutMHS, RekIn2MHS)
         read (DataIn2MHS, RekIn2MHS) { Next-Elmt }
   { EOP(RekIn1MHS)) or EOP(RekIn2MHS) }

   { Menyalin sisa data pada DataIn1MHS }
   while not (EOP(RekIn1MHS)) do
         write (DataOutMHS, RekIn1MHS)
         read (DataIn1MHS, RekIn1MHS) { Next-Elmt }
   { Akhir DataIn1MHS EOP(RekIn1MHS)) }

   { Menyalin sisa data pada DataIn2MHS }
   while not (EOP(RekIn2MHS)) do
         write (DataOutMHS, RekIn2MHS)
         read (DataIn2MHS, RekIn2MHS) { Next-Elmt }
   { Akhir DataIn2MHS EOP(RekIn2MHS)) }
    
   { Tulis mark }
   write (DataOutMHS, mark)

   close (DataOutMHS) { memastikan data baru berhasil terbentuk }
   close (DataIn2MHS)
   close (DataIn1MHS)

{ REALISASI FUNGSI }
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = Mark }
     -> (rek.NIM = 99999999) and (rek.nilai = 99)
'''