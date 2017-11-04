USE CAVE_ONLINE_SHOP;

set @user = "John";
select @user;

set @some_value = 99;
select @some_value;

set @min_value = 8.99;
select * from sales where transaction_value > @min_value;
