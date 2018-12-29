use vtys4hafta;
DELIMITER //
CREATE PROCEDURE zam()
BEGIN
	UPDATE calisanlar SET maas = maas*1.25 
	WHERE bolum = 'muhendis'; 
END //
DELIMITER ;
CALL zam();
SELECT * FROM calisanlar;
