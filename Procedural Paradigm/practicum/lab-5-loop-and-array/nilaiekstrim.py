# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 9 April 2021

# Program nilaiekstrim
# Input: N : integer, X : integer
# Output: Jika X maksimum, menampilkan "maksimum",
#         Jika X minimum, menampilkan "minimum",
#         Jika X maksimum dan minimum, menampilkan "maksimum" "minimum",
#         Jika X bukan keduanya, menampilkan "N#A"
#         Jika X tidak ada, menampilkan "X tidak ada"

# KAMUS
# Variabel
# N, X : int
# arr : array of integer

# ALGORITMA
arr = []
N = int(input()) # asumsi 0<N<=100
for i in range(N):
  arr.append(int(input()))
X = int(input())
if X == max(arr):
  print("maksimum")
  if X == min(arr):
    print("minimum")
elif X == min(arr):
  print("minimum")
elif X not in arr:
  print(X, "tidak ada")
else:
  print("N#A")