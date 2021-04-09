'''
Program TabSuhu
{ program ini dapat menyimpan data suhu harian selama satu tahun
  dalam bentuk array, menampilkan suhu di atas suhu tertentu, 
  mencari nilai maksimum, dan validasi suhu tertentu ada di 
  dalam array. }

KAMUS
   constant NMax : integer = 366
   type TabSuhu : < Tab : array [1..NMax] of real;
                    Neff : integer > { Bernilai >=0, merupakan nilai efektif array;
                                       Neff=0 berarti array kosong }
   procedure InputTabSuhu (output T : TabSuhu, input N : integer)
   { Pengisian data suhu harian
     I.S. Tabel T kosong.
     F.S. Tabel T terdefinisi dari 1..N atau kosong jika N = 0. }
   procedure PrintGtX (input T : TabSuhu, input X : real)
   { Menuliskan ke layar semua data di T yang bernilai > dari X
     I.S. -
     F.S. tertulis semua data di T yang bernilai > X }
   function FindMax (T : TabSuhu) -> real
   { menghasilkan nilai suhu terbesar yang disimpan di T 
     asumsi: T tidak kosong }
   function SearchGtX (T : TabSuhu, X : real) -> boolean
   { menghasilkan True jika nilai X ada di dalam T dan
     menghasilkan False jika sebaliknya. T mungkin kosong }

{ REALISASI FUNGSI/PROSEDUR }
procedure InputTabSuhu (input N : integer, output T : TabSuhu)
{ Pengisian data suhu harian
  I.S. Tabel T kosong
  F.S. Tabel T terdefinisi dari 1..N atau kosong jika N = 0 }
KAMUS LOKAL
   constant NMin : integer = 1   { NMin : batas bawah indeks }
   constant NMax : integer = 366 { NMax : batas atas indeks }
   
   i : integer[NMin..NMax]
   Tab : array [NMin..NMax] of real
   N : integer
ALGORITMA
{ Inisialisasi }
   repeat
      input(N)
   until (N>=0) and (N <= NMax)
   T.Neff <- N
   { Array tidak kosong, pengisian array dari pembacaan dari keyboard }
   if (T.Neff /= 0 ) then
      i traversal [NMin..T.Neff]
         input(T.Tab[i])
 
procedure PrintGtX (input T : TabSuhu, input X : real)
{ Menuliskan ke layar semua data di T yang bernilai > dari X
  I.S. T terdefinisi
  F.S. tertulis semua data di T yang bernilai > X }
KAMUS LOKAL
   constant NMin : integer = 1   { NMin : batas bawah indeks }
   constant NMax : integer = 366 { NMax : batas atas indeks }
   
   i : integer[NMin..NMax]
   Tab : array [NMin..NMax] of real
   N : integer
ALGORITMA
   { Array tidak kosong }
   if T.Neff /= 0 then
      i traversal [NMin..T.Neff]
         if T.Tab[i] > X then
            output(T.Tab[i])
            
function FindMax (T : TabSuhu) -> real
{ menghasilkan nilai suhu terbesar yang disimpan di T
  asumsi: T tidak kosong }
KAMUS LOKAL
   i : integer[NMin..NMax]
ALGORITMA
   MAX <- T.Tab[1] { inisialisasi, T.Tab[1] diasumsikan adalah nilai maks }
   i <- 2 { perbandingan nilai maks dimulai dari elemen ke-2 }
   while (i <= N) do
      if (MAX < T.Tab[i]) then
         MAX <- T.Tab[i]
      i <- i + 1
   { semua elemen sudah selesai diperiksa ketika i > N }
   -> MAX { mengembalikan MAX }

function SearchGtX (T : TabSuhu, X : real) -> boolean
{ menghasilkan true jika nilai X ada di dalam T dan
  menghasilkan false jika sebaliknya. T mungkin kosong }
KAMUS LOKAL
   i : integer[NMin..NMax]
   Found : boolean
ALGORITMA
   Found <- false { awal pencarian, belum ditemukan }
   i <- 1
   while (i <= T.Neff) and (not(Found)) do
      if (T.Tab[i] = X) then
         Found <- true
      else
         i <- i + 1
   { i > N or Found }
   -> Found { mengembalikan Found }
 '''