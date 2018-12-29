use vtys2hafta3soru;
INSERT INTO bolum(bolumNo, bolumAd)
VALUES(50,'BİLİŞİM'),
		(17, 'MUHASEBE'),
        (18, 'ALT YAPI');

INSERT INTO person (pNo, pAdi, pSoyadi,bolumNo, pUcreti )
VALUES (12, 'MERT', 'KAYA', 50, 3000),
		(11, 'ALİ', 'AYDIN', 50, 3500),
        (10, 'ASLI', 'AK', 50, 3300),
        (13, 'ARİF', 'YILMAZ', 50, 5500),
        (14, 'SUAT', 'KAYA', 50, 51000),
        (15, 'MERAL', 'BAŞKAYA', 50, 4900),
        (16, 'ESRA', 'ILGAZ', 17, 3500),
        (17, 'MERVE', 'AKSOY', 17, 5100),
        (18, 'KAZIM', 'KAYA', 17, 6000),
        (19, 'OZAN', 'DEMİR', 17, 6000),
        (20, 'NAZLI', 'SOLMAZ', 17, 6000),
        (21, 'KEREM', 'ASLAN', 18, 6000),
        (22, 'DURSUN', 'TASKESEN', 18, 5000),
        (23, 'EMEL', 'MUTLU', 18, 3500),
        (24, 'KİRAZ', 'YALÇIN', 18, 5500),
        (25, 'GÜL', 'KAYA', 18, 3000),
        (26, 'SENA', 'GÜNGÖR', 18, 4200);
        