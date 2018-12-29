USE vtys7hafta;

CREATE TABLE tOgrenciYedek (
    ogrenciID INT PRIMARY KEY NOT NULL,
    ad NVARCHAR(10),
    soyad NVARCHAR(10),
    dogumTarihi DATE,
    adres NVARCHAR(15),
    telefon NVARCHAR(11),
    bolumID INT,
    vizeNotu INT,
    finalNotu INT 
);
GO
CREATE TRIGGER SilineniEkle ON tOgrenci
AFTER DELETE
AS BEGIN
INSERT INTO tOgrenciYedek SELECT * FROM deleted
END

