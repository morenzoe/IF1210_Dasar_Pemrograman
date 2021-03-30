# Program SekuensialRerataUTS
# Input: UTS : integer
# Output: Jika 0<=UTS<=100, UTS dijumlahkan dan counter bertambah satu
#         Jika tidak, menampilkan rerata UTS

# KAMUS
# Variabel
# UTS, i : int

# ALGORITMA PROGRAM UTAMA

UTS = int(input("Nilai UTS = ")) # First Element
if (UTS < 0 or UTS > 100):
  print("Tidak ada data") # kasus kosong
else: # 0 ≤ UTS ≤ 100
  i = 0
  Sum = 0 # Inisialisasi
  while (UTS>=0 and UTS<=100):
      Sum = Sum + UTS
      i = i + 1
      UTS = int(input("Nilai UTS = ")) # Next Elmt
  print("Nilai rata-rata UTS =", Sum/i) # Terminasi
 
# NOTASI ALGORITMIK
'''
Program SekuensialRerataUTS
{ Menghitung rata-rata nilai UTS yang dibaca, Mark < 0 dan Mark > 100 }

KAMUS
   i : integer { banyaknya integer yang sudah dibaca }
   UTS : integer { sekumpulan bilangan integer yang dibaca, diakhiri dengan kurang dari 0 atau lebih dari 100 }
   Sum : integer { jumlah }

ALGORITMA
   input("Nilai UTS = ", UTS) { First Element }
   if (UTS < 0 or UTS > 100) then
      output("Tidak ada data") { kasus kosong }
   else { 0 ≤ UTS ≤ 100 }
      i <- 0; Sum <- 0 { Inisialisasi }
      repeat
         Sum <- Sum + UTS
         i <- i + 1
         input("Nilai UTS = ", UTS) { Next Elmt }
      until (UTS < 0 or UTS > 100)
      output("Nilai rata-rata UTS =  ", Sum/i) { Terminasi }
'''