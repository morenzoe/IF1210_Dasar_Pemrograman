# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM jumlahderet
# menjumlahkan deret ganjil sampai N
# prekondisi: N>0 dan N%2!=0

# KAMUS
# N, jumlah: int

# ALGORITMA
N = int(input())   # menerima input
jumlah = 0
for i in range(1,N+1,2): # menjumlahkan bilangan ganjil dari 1 sampai N, longkap 2 angka
  jumlah+=i
print(jumlah)           # menampilkan hasil penjumlahan