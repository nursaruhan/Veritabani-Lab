use vtys3haftasales;

CREATE TABLE product_master (
Product_no varchar(20) PRIMARY KEY NOT NULL,
Description varchar(20) NULL,
Profit_percent int NULL,
Unit_measure varchar(20) NULL,
Qty_on_hand int NULL,
Reoder_lvl int NULL,
Sell_price int NULL,
Cost_price int NULL
)