# Program SekuensialRerataNA
# Input: UTS, UAS : integer
# Output: Jika 0<=UTS<=100, menerima input UAS
#         Jika tidak, menampilkan rerata seluruh UTS dan UAS
#         Jika 0<=UAS<=100, menampilkan nilai akhir satu mata pelajaran
#         Jika tidak, menampilkan rerata semua mata pelajaran

# KAMUS
# Variabel
# UTS, i : int

# ALGORITMA PROGRAM UTAMA

UTS = int(input("Nilai UTS = ")) # First Element
if(UTS < 0 or UTS > 100):
  print("Data kosong, tidak ada nilai rata-rata !") # kasus kosong
else: # 0 ≤ UTS ≤ 100
  i = 0
  Sum = 0 # Inisialisasi
  while (UTS >= 0 and UTS <= 100):
      while True:
        UAS = int(input("Nilai UAS = "))
        if (UAS >= 0 and UAS <= 100):
          break
        else:
          print("Ulangi input nilai (0..100)!")
      # Proses data valid
      NA = (0.4 * UTS) + (0.6 * UAS)
      Sum = Sum + NA
      i = i + 1
      print("Nilai akhir pelajaran", i, "=", NA)
      UTS = int(input("Nilai UTS = ")) # Next Elmt
  print("Nilai rata-rata dari", i, "pelajaran adalah =", Sum/i)
 
 # NOTASI ALGORITMIK
'''
Program SekuensialRerataNA
{ Menghitung rata-rata nilai UTS yang dibaca, Mark < 0 dan Mark > 100 }

KAMUS
   i : integer { banyaknya integer yang sudah dibaca }
   UTS : integer { sekumpulan bilangan integer yang dibaca, diakhiri dengan kurang dari 0 atau lebih dari 100 }
   UTS : integer { sekumpulan bilangan integer yang dibaca }
   Sum : integer { jumlah }

ALGORITMA
   input("Nilai UTS = ", UTS) { First Element }
   if(UTS < 0 or UTS > 100) then
      output("Data kosong, tidak ada nilai rata-rata !") { kasus kosong }
   else {} 0 ≤ UTS ≤ 100 }
      i <- 0; Sum <- 0 { Inisialisasi }
      repeat
         iterate
            input("Nilai UAS = ", UAS)
         stop (UAS >= 0 and UAS <= 100)
            output("Ulangi input nilai (0..100)!")
         { Proses data valid }
         NA <- (0.4 * UTS) + (0.6 * UAS)
         Sum <- Sum + NA
         i <- i + 1
         output("Nilai akhir pelajaran ", i, " = ", NA)
         input("Nilai UTS = ", UTS) { Next Elmt }
      until(UTS < 0 or UTS > 100)
      output("Nilai rata-rata dari ", i, " pelajaran adalah = ", Sum/i)
'''