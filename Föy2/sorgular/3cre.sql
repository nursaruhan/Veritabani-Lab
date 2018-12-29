use vtys2hafta3soru;
	CREATE TABLE Bolum(
	bolumNo int NOT NULL PRIMARY KEY,
	bolumAd varchar(255)
);
CREATE TABLE Person(
	pNo int NOT NULL PRIMARY KEY  ,
	pAdi varchar(255),
    pSoyadi varchar(255),
	bolumNo int,
	FOREIGN KEY(bolumNo) REFERENCES Bolum(bolumNo),
    pUcreti int
);

