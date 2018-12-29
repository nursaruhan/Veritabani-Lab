use vtys3haftasales;

CREATE VIEW view_sales_master AS SELECT * FROM Salesman_Master WHERE Tgt_to_get>200;