
USE CAVE_ONLINE_SHOP;

show tables;

select * from products;

create user shopuser@localhost identified by 'hello';
create user procuser@localhost identified by 'hello';



DELIMITER $$

CREATE definer=shopuser@localhost PROCEDURE `ShowCustomers`()
sql security definer
begin
select * from customers;
end$$

DELIMITER ;

grant execute on procedure CAVE_ONLINE_SHOP.ShowCustomers to shopuser@localhost;
grant select on CAVE_ONLINE_SHOP.customers to shopuser@localhost;

grant select on CAVE_ONLINE_SHOP.products to procuser@localhost ;
grant execute on procedure CAVE_ONLINE_SHOP.ShowCustomers to procuser@localhost ;


call ShowCustomers();

drop user shopuser@localhost;
drop user procuser@localhost;
drop procedure ShowCustomers;
