USE CAVE_ONLINE_SHOP;

show tables;

select * from products;

create user shopuser@localhost identified by 'hello';

DELIMITER $$

-- or: sql security invoker

CREATE definer=shopuser@localhost PROCEDURE `ShowCustomers`()
sql security invoker
begin
select * from customers;
end$$

DELIMITER ;

call ShowCustomers();

drop procedure ShowCustomers;
DROP USER shopuser@localhost;
