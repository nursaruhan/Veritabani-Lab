use vtys3haftasales;

CREATE TABLE Salesman_Master(
Salesman_no varchar(6) PRIMARY KEY NOT NULL,
Sal_name varchar(20) NOT NULL,
Address varchar(20) NOT NULL,
City varchar(20) NULL,
State varchar(20) NULL,
Pincode numeric(6) NULL,
Sal_amt numeric(8,2)  NOT NULL,
Tgt_to_get numeric(6,2) NOT NULL,
Ytd_sales numeric(6,2) NOT NULL,
Remarks varchar(30) NULL ,
CONSTRAINT Salesman_no_Kisitlayici CHECK (Salesman_no LIKE 's%' ) ,
CONSTRAINT Sal_amt_Kisitlayici CHECK (Sal_amt NOT LIKE '0' ),
CONSTRAINT Tgt_to_get_Kisitlayici CHECK (Tgt_to_get NOT LIKE '0'),
CONSTRAINT Ytd_sales_Kisitlayici CHECK (Ytd_sales NOT LIKE '0' ))