USE vtys7hafta
GO
CREATE TRIGGER ZamListesiEkleme
ON Personel
AFTER UPDATE
AS
DECLARE @id INT, @ad NVARCHAR(50),@eskiMaas MONEY, @yeniMaas MONEY
BEGIN
SELECT @id=inserted.id, @ad=inserted.ad, @eskiMaas=deleted.maas, @yeniMaas=inserted.maas 
FROM inserted JOIN deleted ON inserted.id=deleted.id
INSERT INTO ZamListesi VALUES(@id, @ad, @eskiMaas, @yeniMaas, GETDATE())
END

