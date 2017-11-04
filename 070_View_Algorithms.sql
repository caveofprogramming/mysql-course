USE CAVE_ONLINE_SHOP;

create algorithm=merge view customer_sales1 as select c.id as customer_id, sold_at from sales s join customers c on c.id=s.customer_id;

create algorithm=temptable view customer_sales2 as select c.id as customer_id, sold_at from sales s join customers c on c.id=s.customer_id;

create algorithm=undefined view customer_sales3 as select c.id as customer_id, sold_at from sales s join customers c on c.id=s.customer_id;

  
