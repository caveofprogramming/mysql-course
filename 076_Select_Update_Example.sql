USE CAVE_ONLINE_SHOP;

CREATE TABLE `sales_history` (
  `recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL
);


select @total := sum(transaction_value) from sales;
insert into sales_history (recorded, total) values (now(), @total);




select * from sales_history;

explain insert into sales_history (recorded, total) values (now(), (select sum(transaction_value) from sales));
