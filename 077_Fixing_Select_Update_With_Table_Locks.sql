USE CAVE_ONLINE_SHOP;


lock tables sales read, sales_history write;
select @total := sum(transaction_value) from sales;
insert into sales_history (recorded, total) values (now(), @total);
unlock tables;


insert into sales (customer_id, product_id, sold_at, transaction_value)
values
(1, 1, now(), 88.77);

select * from sales_history;
