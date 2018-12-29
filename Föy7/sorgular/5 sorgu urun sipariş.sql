USE vtys7hafta
GO
CREATE TRIGGER UrunGuncelle
ON Siparis
AFTER INSERT 
AS
DECLARE @UrunId INT,@Miktar INT

BEGIN
SELECT @UrunId=UrunId, @Miktar=Miktar FROM inserted
UPDATE Urun SET Stok = Stok - @Miktar WHERE Id = @UrunId
END