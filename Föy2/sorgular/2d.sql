use kitapevi;

SELECT studentName FROM student
WHERE studentNo NOT IN (SELECT student.studentNo FROM student
INNER JOIN studies ON studies.studentNo = student.studentNo
INNER JOIN subject on subject.subjectNo = studies.subjectNo
INNER JOIN book ON book.subjectNo = subject.subjectNo
LEFT JOIN buys ON buys.bookNo = book.bookNo and buys.studentNo = student.studentNo 
WHERE buys.bookNo IS NULL);

