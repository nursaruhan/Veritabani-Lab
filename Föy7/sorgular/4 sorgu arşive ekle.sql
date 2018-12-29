CREATE TRIGGER KitapArsiveEkle
ON Kitap
AFTER DELETE
AS
DECLARE @KitapId INT,@KitapAd NVARCHAR(50),@KitapYazar NVARCHAR(50)
BEGIN
SELECT @KitapId=Id, @KitapAd=Ad, @KitapYazar=Yazar FROM deleted
INSERT INTO KitapArsiv VALUES(@KitapId,@KitapAd,@KitapYazar,GETDATE())
END