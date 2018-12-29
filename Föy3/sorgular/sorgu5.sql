use vtys3haftasales;

CREATE VIEW siparis_view AS SELECT * FROM Sales_Order WHERE S_order_date = CURRENT_DATE();