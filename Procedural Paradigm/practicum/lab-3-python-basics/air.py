# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 19 Maret 2021

# PROGRAM air
# Klasifikasi wujud zat air sesuai input temperatur dalam Celcius
# asumsi pada tekanan 1 atm

# KAMUS
# T : float

# ALGORITMA
T = float(input())  # menerima input suhu

if T<0:             # klasifikasi sesuai nilai suhu
  print("PADAT")
elif T>0 and T<100:
  print("CAIR")
elif T>100:
  print("GAS")
elif T==0:
  print("ANTARA PADAT-CAIR")
else:
  print("ANTARA CAIR-GAS")