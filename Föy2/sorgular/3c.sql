use vtys2hafta3soru;

SELECT  person.bolumNo FROM person 
INNER JOIN bolum ON
bolum.bolumNo=person.bolumNo
group by bolumNo
HAVING count(*)>3; 
