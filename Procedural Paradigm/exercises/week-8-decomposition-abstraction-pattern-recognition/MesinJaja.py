# PROGRAM MesinJaja
# program ini memiliki dua mode yaitu mode Loading untuk set-up
# mesin jaja dan mode Operation untuk pembelian sampai habis.
# Asumsi: pengguna memberi input N, harga, jumlah, dan nomor_beli
# berupa integer.

# KAMUS
# type baki:
#       (nomor : int,
#        harga : int,
#        jumlah : int)

# jumlah_minuman, nomor_beli : int
# array_baki : array of baki

def catat_baki(nomor):
# fungsi catat_baki menerima parameter nomor baki, input integer 
# harga dan jumlah barang kemudian mengembalikan harga dan jumlah
# sebagai tipe baki.

# KAMUS LOKAL
# harga, jumlah : int

# ALGORITMA
  global jumlah_minuman                                           # variabel jumlah_minum sudah didefinisikan sebagai variabel global sebagai integer
  while True:                                                     # loop validasi harga
    harga = int(input("Harga barang baki "+str(nomor)+": "))      # menerima input harga berupa integer
    if harga>=5000 and harga<=20000 and harga%5000==0:            
      break                                                       # harga valid
    else:
      print("Masukan harga tidak sesuai.")                        # harga tidak valid
  while True:                                                     # loop validasi jumlah
    jumlah = int(input("Jumlah barang baki "+str(nomor)+": "))    # menerima input jumlah berupa integer
    if jumlah>=0 and jumlah<=10:
      jumlah_minuman+=jumlah                                      # menambahkan variabel global jumlah_minuman dengan jumlah suatu baki
      break                                                       # jumlah valid
    else:
      print("Masukan jumlah tidak sesuai.")                       # jumlah tidak valid
  return (nomor, harga, jumlah)                                   # mengembalikan nomor, harga, dan jumlah sebagai baki

# ALGORITMA PROGRAM UTAMA
# Modus Loading
while True:                                                   # loop validasi jumlah baki
  N = int(input("Jumlah baki: "))
  if N>=1 and N<=40:
    break                                                     # jumlah baki valid

array_baki = [(0,0,0) for i in range(N)]                      # deklarasi variabel array_baki sebagai array of baki

jumlah_minuman = 0                                            # deklarasi variabel jumlah_minuman sebagai jumlah keseluruhan minuman
for nomor in range(N):                                        # loop set-up seluruh baki
  array_baki[nomor]= catat_baki(nomor+1)

# Modus Operation
while jumlah_minuman!=0:                                      # loop pembelian setiap minuman sampai sold-out 
  nomor_beli = int(input("Pilihan nomor baki: "))             # input nomor baki dari minuman yang ingin dibeli
  if array_baki[nomor_beli-1][2]>0:                           # jika minuman pada baki masih ada
    array_baki[nomor_beli-1]=(array_baki[nomor_beli-1][0],
                              array_baki[nomor_beli-1][1],
                              array_baki[nomor_beli-1][2]-1)  # mengurangi jumlah minuman pada baki tersebut
    jumlah_minuman-=1                                         # mengurangi jumlah keseluruhan minuman

# NOTASI ALGORITMIK
'''
Program MesinJaja
{ program ini memiliki dua mode yaitu mode Loading untuk set-up
 mesin jaja dan mode Operation untuk pembelian sampai habis.
 Asumsi: pengguna memberi input N, harga, jumlah, dan nomor_beli
 berupa integer. }

KAMUS
   type baki:
      < nomor : integer,
         harga : integer,
         jumlah : integer >

   N, jumlah_minuman, nomor_beli : integer
   array_baki : array [1..N] of baki

   function catat_baki (nomor : integer) -> baki
   { mengembalikan nomor, harga, dan jumlah sebagai baki

ALGORITMA PROGRAM UTAMA
{ Modus Loading }
   repeat { loop validasi jumlah baki }
      input (N)
   until N>=1 and N<=40 { jumlah baki valid }

   jumlah_minuman <- 0 { deklarasi variabel jumlah_minuman sebagai jumlah keseluruhan minuman }
   nomor traversal [1..N] {loop set-up seluruh baki }
   array_baki_(nomor) = catat_baki(nomor)

{ Modus Operation }
   repeat { loop pembelian setiap minuman sampai sold-out }
      input (nomor_beli) { input nomor baki dari minuman yang ingin dibeli }
   if (array_baki_(nomor_beli))_(jumlah)>0 then { jika minuman pada baki masih ada }
      array_baki_(nomor_beli) <- (array_baki_(nomor_beli))nomor,
                                 (array_baki_(nomor_beli))harga,
                                 (array_baki_(nomor_beli))jumlah - 1) { mengurangi jumlah minuman pada baki tersebut }
      jumlah_minuman <- jumlah_minuman - 1 { mengurangi jumlah keseluruhan minuman }
   until (jumlah_minuman = 0)

{ REALISASI FUNGSI/PROSEDUR }
function catat_baki (nomor : integer) -> baki
{ mengembalikan nomor, harga, dan jumlah sebagai baki
   variabel jumlah_minum sudah didefinisikan sebagai variabel global sebagai integer }
KAMUS LOKAL
   harga, jumlah : integer
ALGORITMA
   repeat { loop validasi harga }
      input (harga) { menerima input harga berupa integer }
   until (harga≥5000) and (harga≤20000) and (harga%5000=0)
   while jumlah>=0 and jumlah<=10 do { loop validasi jumlah }
      input (jumlah) { menerima input jumlah berupa integer }
      jumlah_minuman <- jumlah_minuman + jumlah { menambahkan jumlah keseluruhan minuman }     
   -> (nomor, harga, jumlah) { mengembalikan nomor, harga, dan jumlah sebagai baki }
'''