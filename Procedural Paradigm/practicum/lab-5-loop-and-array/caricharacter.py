# Nama    : Eraraya Morenzo Muten
# NIM     : 16520002
# Tanggal : 9 April 2021

# Program caricharacter
# Input: N : int, char : char
# Output: indeks : int, char : char

# KAMUS
# Variabel
# N, total : int

def pengisian():
# ALGORITMA
  while True:
    N = int(input())
    if (N>0) and (N<=100):
      break
    else:
      print("Masukan salah. Ulangi!")
  chars = []
  for i in range(N):
    chars.append(input())
  return chars

def small(chars):
  found = False
  for i in range(len(chars)):
    if ord(chars[i])>=97 and ord(chars[i])<=122:
      found = True
      print(i+1, chars[i])
      break
  if (found==False):
    print("Tidak ada huruf kecil")

def large(chars):
  found = False
  for i in range(len(chars)):
    if ord(chars[i])>=65 and ord(chars[i])<=90:
      found = True
      print(i+1, chars[i])
      break
  if (found==False):
    print("Tidak ada huruf besar")

def symbol(chars):
  found = False
  for i in range(len(chars)):
    if ord(chars[i])<65 or (ord(chars[i])>90 and ord(chars[i])<97) or ord(chars[i])>122:
      found = True
      print(i+1, chars[i])
      break
  if (found==False):
    print("Semua huruf")

# ALGORITMA PROGRAM UTAMA
chars = pengisian()
CC = input()
if CC in "Ss":
  small(chars)
elif CC in "Ll":
  large(chars)
elif CC in "Xx":
  symbol(chars)
elif CC not in "SsLlXx":
  print("Tidak diproses")