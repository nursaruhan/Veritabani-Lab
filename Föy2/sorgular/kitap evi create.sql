use kitapevi;
CREATE TABLE Subject(
    subjectNo int NOT NULL AUTO_INCREMENT PRIMARY KEY  ,
    stitle varchar(255)
);
CREATE TABLE Department(
    departmentNo int NOT NULL AUTO_INCREMENT PRIMARY KEY  ,
    departmentName varchar(255)
);
CREATE TABLE Publisher(
    publisherNo int NOT NULL AUTO_INCREMENT PRIMARY KEY  ,
    publisherName varchar(255)
);
CREATE TABLE Book(
	bookNo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bookName varchar(255),
    bookFirstauthor varchar(255),
    bookYear year,
    bookPrice decimal,
    publisherNo int,
    subjectNo int,
    FOREIGN KEY(publisherNo) REFERENCES Publisher(publisherNo),
    FOREIGN KEY(subjectNo) REFERENCES Subject(subjectNo)
);
CREATE TABLE Student(
	studentNo int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    studentName varchar(255),
    departmentNo int,
    FOREIGN KEY(departmentNo) REFERENCES Department(departmentNo)  
);
CREATE TABLE Buys(
   studentNo int,
   bookNo int,
   FOREIGN KEY(studentNo) REFERENCES Student(studentNo),
   FOREIGN KEY(bookNo) REFERENCES Book(bookNo)
);
CREATE TABLE Covers(
   subjectNo int,
   bookNo int,
   FOREIGN KEY(subjectNo) REFERENCES Subject(subjectNo),
   FOREIGN KEY(bookNo) REFERENCES Book(bookNo)
);
CREATE TABLE Studies(
   studentNo int,
   subjectNo int,
   FOREIGN KEY(studentNo) REFERENCES Student(studentNo),
   FOREIGN KEY(subjectNo) REFERENCES Subject(subjectNo)
);

