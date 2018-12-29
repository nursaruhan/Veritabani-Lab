use vtys4hafta;
DELIMITER //
CREATE PROCEDURE toplam(IN parametreBolum varchar(25))
BEGIN
    SELECT SUM(maas) AS bolumMaasToplam FROM calisanlar WHERE bolum = parametreBolum ;
END //
DELIMITER ;
CALL toplam('muhendis');


