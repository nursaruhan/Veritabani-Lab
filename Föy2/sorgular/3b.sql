use vtys2hafta3soru;

SELECT 
    pNo AS sicilNo, pAdi, bolumAd
FROM
    person
        INNER JOIN
    bolum ON person.bolumNo = bolum.bolumNo
        AND person.pUcreti > 5000;