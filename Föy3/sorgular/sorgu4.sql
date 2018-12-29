use vtys3haftasales;

select client_master.name as "Müşteri ismi", Product_master.Description as "Ürün ismi"
from Sales_Order
inner join client_master on client_master.client_no = Sales_Order.client_no
inner join Sales_Order_Details on Sales_Order_Details.S_order_no=Sales_Order.S_order_no
inner join Product_master on Product_master.Product_no = Sales_Order_Details.Product_no
where (sales_order.Dely_date-sales_order.S_order_date)>10
