USE CAVE_ONLINE_SHOP;

show tables;

select least(6, 4, 9);

select * from sales;

select date(sold_at), sum(transaction_value) from sales group by date(sold_at);

select date('2015-03-11 11:14:12');

set @tax = 19;
set @day = '2015-03-11';

select sum(transaction_value) * ((100-@tax)/100) from sales where date(sold_at) = @day;

delimiter $$

create function sales_after_tax(tax float, day date) returns numeric(10,2)
begin

	declare result numeric(10,2);

	select sum(transaction_value) * ((100-tax)/100) from sales where date(sold_at) = day into result;

    return result;

end$$


delimiter ;

select sales_after_tax(19, '2015-03-11');

drop function sales_after_tax;
