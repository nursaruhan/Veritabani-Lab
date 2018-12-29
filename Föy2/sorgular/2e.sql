use kitapevi;
SELECT studentName FROM (
SELECT studentNo,sum(bookPrice) fiyat FROM book 
INNER JOIN buys  ON (book.bookNo=buys.bookNo) 
GROUP BY studentNo) buys  
INNER JOIN student  ON(student.studentNo=buys.studentNo)
WHERE fiyat>200