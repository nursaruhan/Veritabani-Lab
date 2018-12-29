use vtys4hafta;
CREATE TABLE tOgrenci (
    ogrenciID INT PRIMARY KEY NOT NULL,
    ad NVARCHAR(10) NULL,
    soyad NVARCHAR(10) NULL,
    dogumTarihi DATE NULL,
    adres NVARCHAR(15) NULL,
    telefon NVARCHAR(11) NULL,
    bolumID INT NULL,
    vizeNotu INT NULL,
    finalNotu INT NULL
)