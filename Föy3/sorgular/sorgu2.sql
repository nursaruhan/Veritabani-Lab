use vtys3haftasales;

CREATE VIEW product_view(pro_no, descr, profit, Unit_measure, qty) AS
    SELECT 
       Product_no, Description, Profit_percent, Unit_measure, Qty_on_hand
    FROM
        Product_Master;