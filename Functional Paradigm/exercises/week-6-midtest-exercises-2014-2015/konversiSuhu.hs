-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
konversiCtoK :: Float -> Float
{- konversiCtoK t menghasilkan konversi t dalam
   derajat Celcius ke derajat Kelvin dengan
   rumus: t+273. -}

konversiRtoC :: Float -> Float
{- konversiRtoC t menghasilkan konversi t dalam
   derajat Reamur ke derajat Celcius dengan
   rumus: (5/4)*t. -}

-- REALISASI FUNGSI ANTARA
konversiCtoK t = t+273

konversiRtoC t = (5/4)*t

-- DEFINISI DAN SPESIFIKASI
konversiSuhu :: Float -> (Float -> Float) -> Float
{- konversiSuhu t f dengan t merepresentasikan suhu
   dalam derajat tertentu dan fungsi f yang merupakan
   fungsi konversi suhu, menghasilkan konversi t ke
   suhu pada derajat tertentu berdasarkan fungsi f. -}

-- REALISASI
konversiSuhu t f = f t

-- APLIKASI283
-- konversiSuhu 10.5 konversiCtoK
-- 283.5
-- konversiSuhu 10.5 konversiRtoC
-- 13.125