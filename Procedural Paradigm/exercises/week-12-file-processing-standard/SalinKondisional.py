# NOTASI ALGORITMIK
'''
Program SalinKondisional
{ Input : sebuah arsip sekuensial berisi NIM dan nilai mahasiswa }
{ Proses : proses setiap NIM adalah menulis kembali pada file sekuensial lain jika sesuai spesifikasi }
{ Output : file sekuensial lain rekaman1.dat }

KAMUS
   type keytype : string
   type valtype : integer
   type rekamanMHS : < NIM : keytype, nilai : valtype>
   constant mark : rekamanMHS = <"99999999", 99>
   RekInMHS : rekamanMHS
   DataInMhs : SEQFILE of
               (*) RekInMHS : rekamanMHS
               (1) mark
   DataOutMhs : SEQFILE of
               (*) RekInMHS : rekamanMHS
               (1) mark
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = mark }

ALGORITMA
   assign (DataInMHS, "rekaman.dat")
   open (DataInMHS, RekInMHS) { First-Elmt }
   assign (DataOutHS, "rekaman1.dat")
   rewrite (DataOutMHS)
   
   while not (EOP(RekInMHS)) do
      if (RekInMHS.nilai >= 80) then
         write (DataOutMHS, RekInMHS)
      read (DataInMHS, RekInMHS) { Next-Elmt }
   { EOP(RekInMHS) }
   
   close (DataInMHS)
   close (DataOutMHS)

{ REALISASI FUNGSI }
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = Mark }
      -> (rek.NIM = "99999999") and (rek.nilai = 99)
'''