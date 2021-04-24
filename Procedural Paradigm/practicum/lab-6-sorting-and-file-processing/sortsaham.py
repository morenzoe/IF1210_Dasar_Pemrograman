# Program SortSaham
# Membaca data pada file sejumlah tipe data dataSaham
# Mengurutkan membesar berdasarkan IdPemilik
# Menampilkan data dengan terurut
import tulisdata

# KAMUS
# Module untuk menulis data file keperluan praktikum

# type dataSaham  : <IdPemilik : string, IdPT : string, Nilai : integer> 

mark = '99999999' # constant mark : character = '99999999'

#namafile : string

def insertionSort(arr):
	for i in range(1, len(arr)):
		key = arr[i]
		j = i-1
		while j >=0 and key[0] < arr[j][0] :
			arr[j+1] = arr[j]
			j -= 1
		arr[j+1] = key

def tampilan(baris):
	kalimat =  ','.join(baris)
	print(kalimat)
		
	
# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSaham(namafile)

array = []

file_data = open(namafile,'r')
data = file_data.readline().strip()
i = 1

if data == mark:
	print("File kosong")
else:
	while data != mark:
		temp = []
		while i<=3:
			temp.append(data)
			data = file_data.readline().strip()		
			i+=1
		array.append(temp)
		i=1
	file_data.close()

	insertionSort(array)
	for row in array:
		tampilan(row)