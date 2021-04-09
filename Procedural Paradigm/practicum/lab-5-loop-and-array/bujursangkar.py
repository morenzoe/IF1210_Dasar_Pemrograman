# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 9 April 2021

# Program bujursangkar
# Input: sisi : int
# Output: Jika sisi>0, mengembalikan luas bujur sangkar berupa L = sisi*sisi
#         Jika tidak, memberikan pesan error "Sisi harus > 0"

# KAMUS
# Variabel
# sisi : int

sisi = int(input())
if sisi > 0:
  print(sisi*sisi)
else:
  print("Sisi harus > 0")