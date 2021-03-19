# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM max3bil
# menampilkan bilangan terbesar dari tiga integer

# KAMUS
# A, B, C : int

# ALGORITMA
A = int(input()) # menerima input tiga integer
B = int(input())
C = int(input())

if A>B:
  if A>C:
    print(A)     # jika A paling besar
  else:
    print(C)     # jika C paling besar
elif B>C:
  print(B)       # jika B paling besar
else:
  print(C)       # jika C paling besar