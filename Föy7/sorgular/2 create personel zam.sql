USE vtys7hafta
GO
CREATE TABLE Personel(
id INT PRIMARY KEY IDENTITY(1,1),
ad NVARCHAR(25),
maas MONEY
)

CREATE TABLE ZamListesi(
id INT,
ad NVARCHAR(25),
eskiMaas MONEY,
yeniMaas MONEY,
tarih DATETIME
)
