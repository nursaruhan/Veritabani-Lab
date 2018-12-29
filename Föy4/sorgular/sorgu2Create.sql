use vtys4hafta;
DELIMITER //
CREATE FUNCTION  faktoriyel(sayi INT)
RETURNS INT 
BEGIN
	DECLARE sonuc int DEFAULT 1;
	DECLARE i int DEFAULT 1;
	WHILE (i <= sayi) DO
		SET sonuc = sonuc * i;
		SET i = i + 1;
	END WHILE;
 return sonuc;
END//
DELIMITER ;

