# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 26 Maret 2021

# PROGRAM resistor
# Menghitung resistor pengganti suatu rangkaian
# Prekondisi: R1, R2, R3 float > 0

# KAMUS
# R1, R2, R3, Rp : float
# hub : char

# ALGORITMA
while True:                                               # loop validasi input
  R1 = float(input())
  R2 = float(input())
  R3 = float(input())
  hub = input().lower()
  if (R1>0) and (R2>0) and (R3>0) and hub in ['s', 'p']:  # validasi input
    break                                                 # input valid
  else:                                                   # input tidak valid
    print("Masukan salah")

if (hub=='s'):              # rangkaian seri
  Rp = R1+R2+R3
  print("%.2f" % Rp)        # 2 desimal
elif (hub=='p'):            # rangkaian paralel
  Rp = (1/R1)+(1/R2)+(1/R3)
  Rp = 1/Rp
  print("%.2f" % Rp)        # 2 desimal