use kitapevi;

SELECT * FROM  student s INNER JOIN  studies ON s.studentNo=studies.studentNo 
INNER JOIN book ON studies.subjectNo=book.subjectNo
INNER JOIN buys ON book.bookNo=buys.bookNo WHERE s.studentNo=buys.studentNo ;