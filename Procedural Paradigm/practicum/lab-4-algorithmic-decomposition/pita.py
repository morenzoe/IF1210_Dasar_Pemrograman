# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 26 Maret 2021

# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
# N : int

def CetakSpasi(j,N):
# I.S. j > 0, N > 0 dan N ganjil
# F.S. Spasi sebanyak (N-j)/2
  for k in range(int((N-j)/2)):
    print(' ', end='')

def CetakBintang(i):
# I.S. N > 0 dan N ganjil
# F.S. Asterisk sebanyak i
  for l in range(i):
    print('*', end='')

def GambarPita(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
  for j in range(N,0,-2):   # mundur dari N sampai 1, hanya ganjil
    CetakSpasi(j, N)
    CetakBintang(j)
    print()                 # pemisah baris

  for i in range(3,N+1,2):  # maju setelah 1 sampai N, hanya ganjil
    CetakSpasi(i, N)
    CetakBintang(i)
    print()                 # pemisah baris

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
  return (N>0) and (N%2!=0)

# ALGORITMA
# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # Pemanggilan fungsi IsValid
    GambarPita(N) # Pemanggilan prosedur GambarPita
else:             # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")