

USE CAVE_ONLINE_SHOP;

select * from customers;
create user runhelloworld@localhost identified by 'hello';

DELIMITER $$



CREATE definer=runhelloworld@localhost PROCEDURE `HelloWorld`()
sql security definer
begin
	select * from customers;
end$$

DELIMITER ;

grant execute on procedure CAVE_ONLINE_SHOP.HelloWorld to runhelloworld@localhost;

grant select on CAVE_ONLINE_SHOP.customers to runhelloworld@localhost;

call HelloWorld();

drop procedure HelloWorld;

drop user runhelloworld@localhost;
