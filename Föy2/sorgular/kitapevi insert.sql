use kitapevi;
INSERT INTO subject(subjectNo, stitle)
VALUES(1, 'Mühendislik'),
		(2,'Programlama'),
        (3, 'Roman'),
        (4, 'Tarih');
INSERT INTO publisher(publisherNo, publisherName)
VALUES(1, 'Papatya Bilim'),
		(2, 'Kodlab'),
        (3, 'Kapı Yayınları'),
        (4, 'Timaş Yayınları'),
        (5, 'Profil Yayınları'),
        (6, 'Yapı Kredi Yayınları');
INSERT INTO department(departmentNo, departmentName)
VALUES(1, 'Bilgisayar Mühendisliği'),
		(2, 'Avukat'),
        (3, 'Öğretmen');
INSERT INTO book(bookNo, bookName, bookFirstauthor, bookYear, bookPrice, publisherNo, subjectNo)
VALUES (1, 'Veri Yapıları ve Algoritmalar', 'Rıfat Çölkesen',2013, 45, 1, 1),
		(2, 'Network TCP/IP UNIX', 'Rıfat Çölkesen', 2018, 30, 1, 1),
        (3, 'JAVA 8', 'Mehmet Kirazli', 2018, 50, 2, 2 ),
        (4, 'Mihmandar (Bir Eyüp Sultan Romanı)', 'İskender Pala', 2014, 25, 3, 3),
        (5, 'Türklerin Tarihi 1', 'İlber Ortaylı', 2015, 30, 4, 4 ),
        (6, 'Şanzelize Düğün Salonu','Tarık Tufan', 2017, 25, 5, 3),
        (7, 'Hayal Meyal', 'Tarık Tufan', 2016, 13, 5, 3),
        (8, 'Python 3', 'Onur Selvi', 2017, 40, 2, 2),
        (9, 'Yapay Zeka', 'Atınç Yılmaz',2017, 45, 2, 1),
        (10, 'Topkapı Sarayı', 'Ahmet Şimşirgil', 2016, 90, 4, 4),
        (11, 'Kürk Mantolu Madonna', 'Sabahattin Ali ', 2002, 8, 6, 3),
        (12, 'Kuyucaklı Yusuf', 'Sabahattin Ali ', 2001, 15, 6, 3);
        
INSERT INTO student(studentNo, studentName, departmentNo)
VALUES(1, 'Kübra Nur Saruhan', 1),
		(2, 'Sümeyra Aydın', 3),
        (3, 'Yavuz Demir', 2);

INSERT INTO buys(studentNo, bookNo)
VALUES(1,1), (1,2), (1,3), (1,8), (1,9),
        (2,6), (2,7), (2,11),
        (3,4), (3,5), (3,6), (3,7), (3,10), (3,11), (3,12);
        
INSERT INTO covers(subjectNo, bookNo)
VALUES (1, 1),
		(2,1),
        (2,3),
        (3,4),
        (4,5),
        (3,6),
        (3,7),
        (2,8),
        (1,9),
        (4,10),
        (3,11),
        (3,12);

INSERT INTO studies(studentNo, subjectNo)
VALUES(1,1), (1,2),
        (2,3),
        (3,3), (3,4);

