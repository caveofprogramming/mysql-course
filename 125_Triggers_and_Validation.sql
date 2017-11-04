DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table products (id int primary key auto_increment, value numeric(10,2) not null);

delimiter $$

create trigger before_products_insert before insert on products for each row
begin

	if new.value > 100.0 then
		set new.value := 100.0;
    end if;

end$$

create trigger before_products_update before update on products for each row
begin

	if new.value > 100.0 then
		set new.value := 100.0;
    end if;

end$$

delimiter ;


insert into products (value) values (500);

update products set value = 102 where id=1;

select * from products;
