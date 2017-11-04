USE CAVE_ONLINE_SHOP;

select @total := sum(transaction_value), @min_value := min(transaction_value) from sales;

select @total;
select @min_value;
