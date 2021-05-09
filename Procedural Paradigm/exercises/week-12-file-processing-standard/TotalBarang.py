# NOTASI ALGORITMIK
'''
Program TotalBarang
{ Input : sebuah arsip sekuensial berisi kategori, keadaan  barang, dan jumlah }
{ Proses : proses setiap kategori adalah menambah jumlah tiap barang }
{ Output : Kategori dan total jumlah setiap barang }

KAMUS
   type keytype : string
   type valtype : integer
   type penjualan : <Kategori : keytype,
                     KdBarang : string,
                     Jumlah : valtype>
   ArsipBarang : SEQFILE of
                 (*) sale : penjualan
                 (1) mark : penjualan { sudah terdefinisi }
   CurrentBarang : keytype
   SumJum : integer
   function EOP (rek : rekamanMHS) -> boolean
   { menghasilkan true jika pembacaan rek = Mark }

ALGORITMA
   assign (ArsipBarang, "datapenjualan.dat")
   open (ArsipBarang, sale) { First-Elmt }
   
   while not (EOP(sale)) do
      SumJum <- 0
      CurrentBarang <- sale.Kategori
      repeat
         SumJum <- SumJum + sale.Jumlah
         read (ArsipBarang, sale) { Next-Elmt }
      until (sale.Kategori /= CurrentBarang)
      output(CurrentBarang, " ", SumJum)
      { Terminasi kategori }
   { EOP(sale) }
   
   close (ArsipBarang)

{ REALISASI FUNGSI }
{ sudah terdefinisi }
'''