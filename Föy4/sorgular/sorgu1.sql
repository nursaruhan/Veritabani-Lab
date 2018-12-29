use vtys4hafta;
DELIMITER //
CREATE FUNCTION  fn_BolunurMu(parametre1 INT, parametre2 INT)
RETURNS varchar(25) 
BEGIN
	IF (parametre2 % parametre1) = 0  THEN
		RETURN 'Tam Bölünür';
    ELSE
		RETURN 'Tam Bölünmez';
    END IF;    
END//
DELIMITER ;

