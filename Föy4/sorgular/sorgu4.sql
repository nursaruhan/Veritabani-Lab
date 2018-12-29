use vtys4hafta
go
DECLARE  @ad nvarchar(10)
DECLARE  @vizeNotu int 
DECLARE  tCursor cursor for
SELECT ad,vizeNotu FROM tOgrenci
OPEN tCursor
	FETCH NEXT FROM tCursor INTO @ad, @vizeNotu
	WHILE @@FETCH_STATUS = 0
	BEGIN	
		UPDATE tOgrenci SET vizeNotu =  vizeNotu + 5 WHERE  ad LIKE '%a%' or ad LIKE'%i%' ;
		UPDATE tOgrenci SET vizeNotu =  vizeNotu - 5 WHERE   ad NOT LIKE '%a%' and ad NOT LIKE '%i%';	
	FETCH NEXT FROM tCursor INTO @ad, @vizeNotu
	END
CLOSE tCursor
DEALLOCATE tCursor
SELECT * FROM tOgrenci
