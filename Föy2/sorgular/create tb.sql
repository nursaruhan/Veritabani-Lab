use vtys2hafta;
CREATE TABLE Bolum(
	bolumNo int NOT NULL PRIMARY KEY,
	bolumAd varchar(255)
);
CREATE TABLE Personel(
	pNo int NOT NULL PRIMARY KEY  ,
	pAdi varchar(255),
	bolumNo int,
	FOREIGN KEY(bolumNo) REFERENCES Bolum(bolumNo)
);

