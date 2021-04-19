# NOTASI ALGORITMIK
'''
Program TotalBarang
{ Input : sebuah arsip sekuensial berisi kategori, keadaan  barang, dan jumlah }
{ Proses : proses setiap kategori adalah menambah jumlah tiap barang }
{ Output : Kategori dan total jumlah setiap barang }

KAMUS
   type keytype : string
   type valtype : integer
   type penjualan : <Kategori : string,
                     KdBarang : string,
                     Jumlah : integer>
   ArsipBarang : SEQFILE of
                 (*) sale : penjualan
                 (1) mark : penjualan { sudah terdefinisi }
   CurrentBarang : keytype
   SumJum : valtype
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = Mark }

ALGORITMA
   assign (ArsipBarang, "datapenjualan.dat")
   open (ArsipBarang, sale)
   while (EOP(sale)) do
      SumJum <- 0
      CurrentBarang <- sale.Kategori
      repeat
         SumJum <- SumJum + sale.Jumlah
         read (ArsipBarang, sale)
      until (CurrentBarang != sale.Kategori)
      output(CurrentBarang, " ", SumJum)
   close (ArsipBarang, sale)

{ REALISASI FUNGSI }
{ sudah terdefinisi }
'''