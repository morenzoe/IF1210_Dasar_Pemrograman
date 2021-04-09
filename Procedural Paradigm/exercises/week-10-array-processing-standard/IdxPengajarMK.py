# Program IdxPengajarMK
# menerima masukan berupa nama pengajar, misalnya P, dan sebuah TabMatKul, misalnya T, 
# dan menghasilkan indeks di mana P ditemukan terakhir kali di T, atau 0 jika P tidak 
# ditemukan di T. T mungkin kosong.
# Input: P : string, T: TabMatKul
# Output: i : int

# KAMUS
# Konstanta
NMax = 100

# type MatKul :
#      ( KodeMK     : int,
#        NamaMK     : string,
#        Pengajar   : string,
#        JmlPeserta : int )

# type TabMatKul :
#      ( TM : array of MatKul
#        NELMT : int )        # nilai efektif [0..NMax], 0 jika tabel kosong

# Variabel
# T : TabMatKul
# P : string
 
def IdxPengajarMK(P, T):
# menghasilkan indeks di mana P ditemukan terakhir kali di T,
# atau 0 jika P tidak ditemukan di T. T mungkin kosong

# KAMUS LOKAL
# i : int

# ALGORITMA
  if (T[1] == 0):                      # array kosong
    return 0                          # mengembalikan 0
  else:                               # array tidak kosong
    i = T[1]-1
    while (i>0) and (T[0][i][2]!=P):
      i = i - 1                       # perbandingan mundur
      # i == 1 or T[0][i][2] == P
    if (T[0][i][2]==P):
      return i                        # mengembalikan i
    else:
      return 0                        # mengembalikan 0

# NOTASI ALGORITMIK
'''
Program IdxPengajarMK
{ menerima masukan berupa nama pengajar, misalnya P, dan sebuah TabMatKul, 
  misalnya T, dan menghasilkan indeks di mana P ditemukan terakhir kali 
  di T, atau 0 jika P tidak ditemukan di T. T mungkin kosong. }

KAMUS
   constant NMax : integer = 100
   type MatKul : < KodeMK     : integer, 
                   NamaMK     : string, 
                   Pengajar   : string, 
                   JmlPeserta : integer[0..100] >

   type TabMatKul :

         < TM : array [1..NMax] of MatKul,
           NELMT : integer { nilai efektif [0..NMax], 0 jika tabel kosong } >
   
   function IdxPengajarMK (P : string, T : TabMatkKul) -> integer
   { menghasilkan indeks di mana P ditemukan terakhir kali di T,
     atau 0 jika P tidak ditemukan di T. T mungkin kosong }

{ REALISASI FUNGSI/PROSEDUR }
function IdxPengajarMK (P : string, T : TabMatkKul) -> integer
{ menghasilkan indeks di mana P ditemukan terakhir kali di T,
  atau 0 jika P tidak ditemukan di T. T mungkin kosong }
KAMUS
   i : integer[1..NMax]
ALGORITMA
   if (T.NELMT = 0) then { array kosong }
      -> 0 { mengembalikan 0}
   else { array tidak kosong }
      i <- T.NELMT
      while (i > 1) and (T.TM[i].Pengajar /= P) do
         i <- i - 1 { perbandingan mundur }
      { i = 1 or T.TM[i].Pengajar = P }  
      if (T.TM[i].Pengajar = P) then
         -> i { mengembalikan i }
      else { T.TM[i].Pengajar /= P }
         -> 0 { mengembalikan 0 }
'''