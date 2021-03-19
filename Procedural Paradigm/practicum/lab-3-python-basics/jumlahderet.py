# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM jumlahderet
# menjumlahkan deret ganjil sampai N
# prekondisi: N>0 dan N%2!=0

# KAMUS
# N: int

# ALGORITMA
N = int(input())   # menerima input
for i in range(N): # menjumlahkan bilangan ganjil dari 1 sampai sebelum N
  if i%2 != 0:
    N+=i
print(N)           # menampilkan hasil penjumlahan