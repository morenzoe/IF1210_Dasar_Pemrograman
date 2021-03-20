# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM luastrapesium
# menghitung luas trapesium dengan persamaan 0.5*t*(s1+s2)

# KAMUS
# t, s1, s2 : float

# ALGORITMA
t = float(input())  # menerima input panjang trapesium
s1 = float(input())
s2 = float(input())

l = 0.5*t*(s1+s2) # menampilkan hasil perhitungan luas

print("{luas:.2f}".format(luas=l))