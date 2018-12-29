use kitapevi;
select publisherName from (
select publisherName,
(select COUNT(*) adet from  Book b where b.bookYear=2018 and b.publisherNo=p.publisherNo) a2018
,(select COUNT(*) adet from  Book b where b.bookYear=2017 and b.publisherNo=p.publisherNo) a2017
,(select COUNT(*) adet from  Book b where b.bookYear=2016 and b.publisherNo=p.publisherNo) a2016
,(select COUNT(*) adet from  Book b where b.bookYear=2015 and b.publisherNo=p.publisherNo) a2015
,(select COUNT(*) adet from  Book b where b.bookYear=2014 and b.publisherNo=p.publisherNo) a2014
from publisher p ) publisher where publisher.a2018 > 0 or publisher.a2014 > 0 or publisher.a2016 > 0 or publisher.a2015 > 0 or publisher.a2014 > 0
