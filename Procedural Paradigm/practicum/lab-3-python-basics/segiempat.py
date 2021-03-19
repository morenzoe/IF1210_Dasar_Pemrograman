# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM segiempat
# Menapilkan pola segiempat dengan simbol sesuai input
# Prekondisi: N>0, C1!=C2

# KAMUS
# N : int
# C1, C2 : str

# ALGORITMA
N = int(input()			# menerima input panjang sisi segi empat
C1 = input()			# simbol keliling segi empat
C2 = input()			# simbol isi segi empat

if C1!=C2 and N>0:		# memenuhi prekondisi
  if N==1:			# kasus khusus panjang segiempat 1
    print(C1)
  else:
    for i in range(N):		# baris pertama segiempat
      print(C1, end='')
    print()
    for j in range(N-2):	# baris kedua pertama sampai kedua terakhir
      print(C1, end='')		# diawali dengan C1
      for k in range(N-2):	# diisi dengan C2 
        print(C2, end='')
      print(C1, end='')		# diakhiri dengan C1
      print()
    for l in range(N):		# baris terakhir segi empat
      print(C1, end='')
    print()
else:
  print("Masukan tidak valid")	# tidak memenuhi prekondisi