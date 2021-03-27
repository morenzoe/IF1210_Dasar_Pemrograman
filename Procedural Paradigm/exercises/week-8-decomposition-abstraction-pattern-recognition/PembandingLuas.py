# PROGRAM PembandingLuas
# program ini akan menerima input dua persegi empat S1 dan S2
# dengan masing-masing terdiri dari dua titik diagonal TAwal dan TAkhir
# dan memberikan output perbandingannya. 
# Asumsi: pengguna memberi input x dan y berupa integer.

# KAMUS
# type Titik:
#       (x : int,
#        y : int)
# type SegiEmpat:
#       (TAwal : Titik,
#        TAkhir : Titik)

# S1, S2 : SegiEmpat
# L1, L2 : int

def pembuat_titik(nama_titik, nama_segiempat):
# fungsi pembuat_titik menerima parameter nama titik dan nama segi empat
# untuk prompt input dua integer x (absis) dan y (ordinat). Kemudian
# mengembalikan x dan y sebagai tipe Titik.

# KAMUS LOKAL
# x, y : int

# ALGORITMA
  x = int(input("Koordinat x titik "+nama_titik+" segi empat "+nama_segiempat+": "))  # menerima input x dan y
  y = int(input("Koordinat y titik "+nama_titik+" segi empat "+nama_segiempat+": "))
  return (x,y)                                                                        # mengembalikan x dan y sebagai Titik 

def pembuat_segiempat(nama_segiempat):
# fungsi pembuat_segiempat menerima parameter nama segi empat untuk
# diteruskan pada fungsi pembuat_titik. Fungsi ini akan melakukan validasi
# sampai x dan y TAwal dan TAkhir tidak sama kemudian mengembalikan
# TAwal dan TAkhir sebagai tipe SegiEmpat.

# KAMUS LOKAL
# TAwal, TAkhir : Titik

# ALGORITMA
  while True:                                         # loop validasi
    TAwal = pembuat_titik("TAwal", nama_segiempat)    # membuat variabel Titik TAwal dan TAkhir
    TAkhir = pembuat_titik("TAkhir", nama_segiempat)
    if TAwal[0]!=TAkhir[0] and TAwal[1]!=TAkhir[1]:   # validasi x dan y TAwal dan TAkhir tidak sama
      break                                           # titik valid
    else:
      print("Masukan titik tidak sesuai.")            # titik tidak valid
  return (TAwal, TAkhir)                              # mengembalikan TAwal dan TAkhir sebagai SegiEmpat

def absolut(x):
# fungsi absolut menerima parameter variabel integer x dan
# mengembalikan x jika x>=0 atau -1*x jika x<0.

# KAMUS LOKAL
# x : int

# ALGORITMA
if x<0:     # jika x negatif, kalikan dengan (-1) agar menjadi positif
  x = -1*x
return x    # mengembalikan x

def penghitung_luas(segiempat):
# fungsi penghitung_luas menerima parameter variabel segi empat dan
# mengembalikan luas segi empat tersebut sebagai tipe integer.

# KAMUS LOKAL
# L : int

# ALGORITMA
  L = absolut(segiempat[0][0]-segiempat[1][0])*absolut(segiempat[0][1]-segiempat[1][1]) # luas  = |x1-x2| * |y1-y2|
  return L

# ALGORITMA PROGRAM UTAMA
S1 = pembuat_segiempat("S1")  # membuat variabel SegiEmpat S1 dan S2 
S2 = pembuat_segiempat("S2")
L1 = penghitung_luas(S1)      # membuat variabel luas L1 dan L2
L2 = penghitung_luas(S2)

if L1>L2:                     # menampilkan hubungan luas S1 dan luas S2
  print("SegiEmpat pertama lebih luas daripada SegiEmpat kedua")
elif L1<L2:
  print("SegiEmpat kedua lebih luas daripada SegiEmpat pertama")
elif L1==L2:
  print("Luas SegiEmpat sama")

# NOTASI ALGORITMIK
'''
Program PembandingLuas
{ program ini akan menerima input dua persegi empat S1 dan S2
 dengan masing-masing terdiri dari dua titik diagonal TAwal dan TAkhir
 dan memberikan output perbandingannya. 
 Asumsi: pengguna memberi input x dan y berupa integer. }

KAMUS
   type Titik :
      < x : integer;
         y : integer >
   type SegiEmpat :
      < TAwal : Titik;
         TAkhir : Titik >
   S1, S2 : SegiEmpat
   L1, L2 : integer
   function pembuat_titik (nama_titik : string, nama_segiempat : string) -> Titik
   { menghasilkan Titik berisi x dan y }
   function pembuat_segiempat (nama_segiempat : string) -> SegiEmpat
   { menghasilkan SegiEmpat berisi TAwal dan TAkhir }
   function absolut (x : integer) -> integer
   { mengembalikan x positif }
   function penghitung_luas (segiempat : SegiEmpat) -> integer
   { mengembalikan luas segi empat }

ALGORITMA PROGRAM UTAMA
   S1 <- pembuat_segiempat("S1") { membuat variabel SegiEmpat S1 dan S2 }
   S2 <- pembuat_segiempat("S2")
   L1 <- penghitung_luas(S1) { membuat variabel luas L1 dan L2 }
   L2 <- penghitung_luas(S2)
 
   depend on (L1, L2) { menampilkan hubungan luas S1 dan luas S2 }
      (L1>L2) : output ("SegiEmpat pertama lebih luas daripada SegiEmpat kedua")                  
      (L1<L2) : output ("SegiEmpat kedua lebih luas daripada SegiEmpat pertama")
      (L1=L2) : output ("Luas SegiEmpat sama")

{ REALISASI FUNGSI/PROSEDUR }
function pembuat_titik () -> Titik
{ menghasilkan Titik berisi x dan y }
KAMUS LOKAL
   x, y : integer
ALGORITMA
   input (x) { menerima input x dan y }
   input (y)
   -> (x,y) { mengembalikan x dan y sebagai Titik }

function pembuat_segiempat () -> SegiEmpat
{ menghasilkan SegiEmpat berisi TAwal dan TAkhir }
KAMUS LOKAL
   TAwal, TAkhir : Titik
ALGORITMA
   repeat { loop validasi }
      TAwal <- pembuat_titik() { membuat variabel Titik TAwal dan TAkhir }
      TAkhir <- pembuat_titik()
   until (TAwal[0]≠TAkhir[0]) and (TAwal[1]≠TAkhir[1]) { validasi x dan y TAwal dan TAkhir tidak sama }
   ->  (TAwal, TAkhir) { mengembalikan TAwal dan TAkhir sebagai SegiEmpat }

function absolut (x : integer) -> integer
{ mengembalikan x positif }
KAMUS LOKAL
   x : integer
ALGORITMA
   if (x<0) then { jika x negatif, kalikan dengan (-1) agar menjadi positif }
      x <- (-1)*x
   -> x { mengembalikan x }

function penghitung_luas (segiempat : SegiEmpat) -> integer
{ mengembalikan luas segi empat }
KAMUS LOKAL
   L : integer
ALGORITMA
   L = (absolut(segiempat.TAwal.x - segiempat.TAkhir.x)) * (absolut(segiempat.TAwal.y - segiempat.TAwal.y))
           { luas  = |x1-x2| * |y1-y2| }
   -> L
'''