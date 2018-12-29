 USE vtys7hafta
 GO
CREATE TRIGGER OyuncuGuncelle
ON Oyuncu
AFTER UPDATE
AS
DECLARE @Id INT
BEGIN
SELECT @Id=Id FROM inserted
UPDATE Oyuncu SET GuncellemeTarihi=GETDATE() WHERE Id=@Id
END
