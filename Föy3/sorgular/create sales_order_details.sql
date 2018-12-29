use vtys3haftasales;

CREATE TABLE Sales_Order_Details (
    S_order_no VARCHAR(6) NOT NULL ,
    Product_no VARCHAR(6) NOT NULL ,
    Qty_order numeric(8) NULL,
    Qty_disp numeric(8) NULL,
    Product_rate numeric(10,2) NULL,
    FOREIGN KEY (S_order_no) REFERENCES sales_order(S_order_no),
    FOREIGN KEY (Product_no) REFERENCES product_master(Product_no)
)