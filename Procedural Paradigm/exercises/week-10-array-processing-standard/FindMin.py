# Program FindMin
# program ini akan mengembalikan elemen minimum dari array
# Asumsi: array tidak kosong.
# Input: T : TabInt, input N : int
# Output: Min : int, IMin : int

# KAMUS
# type TabInt : array of integer

# Variabel
# T : TabInt
# N : int

def FindMin(T, N):
# I.S. Tabel T tidak kosong, N > 0
# F.S. Menghasilkan harga minimum dari tabel T1..N secara sekuensial mulai dari 
#      indeks 1..N dan menyimpan hasilnya di MIN serta mendapatkan indeks terkecil 
#      elemen yang bernilai MIN yang disimpan di IMin 

# KAMUS LOKAL
# i, IMin, MIN : int

# ALGORITMA
  MIN = T[0]            # inisialisasi, T[1] diasumsikan adalah nilai min
  IMin = 0
  i = 1                 # perbandingan nilai min dimulai dari elemen ke-2
  while (i<=N-1):
    if (MIN > T[i]):
      MIN = T[i]
      IMin = i
    i = i + 1
    # semua elemen sudah selesai diperiksa ketika i > N
  print(IMin)

# NOTASI ALGORITMIK  
'''
Program FindMin
{ program ini akan mengembalikan elemen minimum dari array
 Asumsi: array tidak kosong. }

KAMUS
   constant NMax : integer = 100
   type TabInt : array [0..NMax-1] of integer
   { Variabel }
   T : TabInt
   N : integer { banyaknya elemen efektif }
 
procedure FindMin (input T : TabInt, input N : integer, 
                   output MIN : integer, output IMin : integer)
{ Pencarian harga minimum tabel T
  I.S. Tabel T tidak kosong, N > 0
  F.S. Menghasilkan harga minimum dari tabel T1..N secara sekuensial mulai dari 
       indeks 1..N dan menyimpan hasilnya di MIN serta mendapatkan indeks terkecil 
       elemen yang bernilai MIN yang disimpan di IMin }

ALGORITMA PROGRAM UTAMA
   FindMin T N

{ REALISASI FUNGSI/PROSEDUR }
procedure FindMin (input T : TabInt, input N : integer, 
                   output MIN : integer, output IMin : integer)
{ Pencarian harga minimum tabel T
   I.S. Tabel T tidak kosong, N > 0
   F.S. Menghasilkan harga minimum dari tabel T[1..N] secara sekuensial mulai dari 
        indeks 1..N dan menyimpan hasilnya di MIN serta mendapatkan indeks terkecil 
        elemen yang bernilai MIN yang disimpan di IMin }
KAMUS LOKAL
   i, IMin, MIN : integer
ALGORITMA
   MIN <- T[1] { inisialisasi, T[1] diasumsikan adalah nilai min }
   IMin <- 1
   i <- 2 { perbandingan nilai min dimulai dari elemen ke-2 }
   while (i <= N) do
      if (MIN > T[i]) then
         MIN <- T[i]
         IMin <- i
      i <- i + 1
      { semua elemen sudah selesai diperiksa ketika i > N }
   output(MIN)
   output(IMin)
'''