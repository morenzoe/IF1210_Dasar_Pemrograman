# Program Sortir
# Membaca masukan sejumlah bilangan dan menjadikan array
# Mengurutkan array dengan selection sort
# Mengembalikan array yang terurut

# KAMUS
def get_max(arr, index_start):
  # mendapatkan maksimum array dari indeks indeks_start sampai selesai
  return max(arr[index_start:])

def get_idx(arr, number):
   # mendapatkan index dari suatu angka dalam array
   return arr.index(number)

def swap(array, indeks_1, indeks_2):
  # swap elemen array indeks 1 dengan indeks 2
  array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]
  return array
  
def sort(arr):
  for i in range(len(arr)):
    maxArr = get_max(arr, i)
    maxIdx = get_idx(arr, maxArr)
    swap(arr, i, maxIdx)
  print(arr)

# ALGORITMA PROGRAM UTAMA
N = int(input()) #diasumsikan valid, integer positif
arr = []
for i in range(N):
	arr.append(int(input()))

sort(arr)