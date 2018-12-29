use vtys2hafta;
SELECT  (SELECT count(pAdi) FROM personel) ToplamKişiSayısı , bolumNo FROM personel ;