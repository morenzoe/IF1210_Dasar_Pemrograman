# Program HitungHargaKelereng
# Menghitung total yang harus dibayar dari m kelereng merah 1000 rupiah, 
# h kelereng hijau 1500 rupiah dan k kelereng kuning 2000 rupiah.

# KAMUS
# m : integer
# h : integer
# k : integer

# ALGORITMA
m = int(input()) # menerima masukan jumlah masing-masing kelereng
h = int(input())
k = int(input())

total = 1000 * m + 1500 * h + 2000 * k # total yang dibayar dalam rupiah

print(total) # menampilkan yang harus dibayar

# NOTASI ALGORITMIK
'''
Program HitungHargaKelereng
{Menghitung total yang harus dibayar dari m kelereng merah 1000 rupiah, 
h kelereng hijau 1500 rupiah dan k kelereng kuning 2000 rupiah.}

Kamus
   m : integer
   h : integer
   k : integer

ALGORITMA
   input(m) {menerima masukan jumlah masing-masing kelereng}
   input(h)
   input(k)

   total <- 1000 * m + 1500 * h + 2000 * k {total yang dibayar dalam rupiah}

   output(total) {menampilkan yang harus dibayar}
'''