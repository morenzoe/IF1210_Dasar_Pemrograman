# Program ValidasiJamLoop
# Input: h, m, s : integer
# Output: Jika 0<=h<=23, 0<=m<=59, 0<=s<=59, J = (h,m,s)
#         Jika tidak, tampilkan pesan "Tidak dapat membentuk jam"

# KAMUS
# Variabel
#    type jam:
#     ( HH : int,  # 0<=h<=23
#       MM : int,  # 0<=m<=59
#       SS : int ) # 0<=s<=59
#  J : jam
#  h, m, s : int

# ALGORITMA PROGRAM UTAMA
while True:
  h = int(input("Jam: "))                                                 # menerima input dari keyboard
  m = int(input("Menit: "))
  s = int(input("Detik: "))

  if (h >= 0 and h <= 23 and m >= 0 and m <= 59 and s >= 0 and s <= 59):  # validasi input
    J = (h,m,s)                                                           # membentuk variabel J bertype jam
    break
  else:                                                                   # data tidak valid
    print("Tidak dapat membentuk jam")

# NOTASI ALGORITMIK
'''
Program ValidasiJamLoop
{ Dibaca 3 integer h, m, s }
{ Dituliskan dalam bentuk type jam jika valid }

KAMUS
  type jam:
    < HH : integer[0..23];  { bagian jam }
      MM : integer[0..59];  { bagian menit }
      SS : integer[0..59] > { bagian detik }
  J : jam
  h, m, s : integer

ALGORITMA
  iterate
    input(h,m,s) { menerima input dari keyboard }
  stop (h >= 0 and h <= 23 and m >= 0 and m <= 59 and s >= 0 and s <= 59)
    output("Tidak dapat membentuk jam")
  { Proses data valid }
  J.HH <- h
  J.MM <- m
  J.SS <- s
'''