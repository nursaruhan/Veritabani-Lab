use vtys3haftasales;

CREATE TABLE Sales_Order (
    S_order_no VARCHAR(6) PRIMARY KEY NOT NULL CHECK (S_order_no LIKE '0%'),
    S_order_date DATE,
    client_no VARCHAR(25) NOT NULL,
    FOREIGN KEY (client_no) REFERENCES client_master (client_no),
    Dely_add VARCHAR(6) NULL ,
    Salesman_no VARCHAR(6) NOT NULL,
    FOREIGN KEY (Salesman_no) REFERENCES Salesman_Master (Salesman_no),
    Dely_type CHAR(1) DEFAULT 'F' CHECK (Dely_type IN ('p', 'f')),
    Billed_yn CHAR(1) NULL,
    Dely_date DATE CHECK (Dely_date>=S_order_date),
    Order_status VARCHAR(10) CHECK (Order_status IN('in process', 'fullfilled', 'back order', 'canceled'))
)