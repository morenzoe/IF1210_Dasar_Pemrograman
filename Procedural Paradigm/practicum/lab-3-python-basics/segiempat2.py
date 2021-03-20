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
N = int(input())                # menerima input panjang sisi segi empat
C1 = input()                    # simbol keliling segi empat
C2 = input()			              # simbol isi segi empat

if C1!=C2 and N>0:		          # memenuhi prekondisi
  for j in range(N):            # koordinat y
    for i in range(N):          # koordinat x
      if i==0 or i==N-1:        # sisi kiri dan kanan
        print(C1, end='') 
      elif j==0 or j==N-1:      # sisi atas dan bawah
        print(C1, end='')
      else:
        print(C2, end='')       # isi persegi
    print()                     # pisah baris
else:
  print("Masukan tidak valid")  # tidak memenuhi prekondisi