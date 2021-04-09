# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 4 April 2021

# Program berat
# Input: berat : int
# Output: Jika data tidak kosong,
#         menampilkan jumlah data <=50
#         menampilkan jumlah data >=100
#         menampilkan rata-rata nilai semua data
#         Jika data kosong, menampilkan "Data kosong"

# KAMUS
# Variabel
# berat, kurang50, lebih100 : int
# arr : array of int

# ALGORITMA
arr = []
while True:
  berat = int(input())
  if berat == -999:
    break
  elif berat>=30 and berat<=200:
    arr.append(berat)
kurang50 = 0
lebih100 = 0
for i in arr:
  if i<=50:
    kurang50+=1
  elif i>=100:
    lebih100+=1
if len(arr) == 0:
  print("Data kosong")
else:
  print(len(arr))
  print(kurang50)
  print(lebih100)
  print(round(sum(arr)/len(arr)))