use vtys7hafta;

CREATE TABLE tOgrenci (
    ogrenciID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ad NVARCHAR(10),
    soyad NVARCHAR(10),
    dogumTarihi DATE,
    adres NVARCHAR(15),
    telefon NVARCHAR(11),
    bolumID INT,
    vizeNotu INT,
    finalNotu INT 
)