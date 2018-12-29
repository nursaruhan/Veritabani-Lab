use vtys3haftasales; 

CREATE TABLE client_master (
client_no varchar(6) PRIMARY KEY NOT NULL,
name varchar(20) NULL,
address1 varchar(30) NULL,
address2 varchar(30) NULL,
city varchar(15) NULL,
state varchar(15) NULL,
pincode numeric(6,0) NULL,
bal_due numeric(10,3) NULL
)