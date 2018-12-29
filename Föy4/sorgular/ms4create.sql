USE vtys4hafta ;
GO
CREATE TABLE tOgrenci (
    ogrenciID INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ad NVARCHAR(10) NULL,
    soyad NVARCHAR(10) NULL,
    dogumTarihi nvarchar(15) NULL,
    adres NVARCHAR(15) NULL,
    telefon NVARCHAR(11) NULL,
    bolumID INT NULL,
    vizeNotu INT NULL,
    finalNotu INT NULL
)