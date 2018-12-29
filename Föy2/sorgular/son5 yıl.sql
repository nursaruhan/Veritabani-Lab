use kitapevi;

SELECT 
    COUNT(*), publisherName
FROM
    book
        INNER JOIN
    publisher ON (publisher.publisherNo = book.publisherNo)
WHERE
    bookYear >= 2014 AND bookYear <= 2018
GROUP BY publisherName
HAVING COUNT(*) > 0;
