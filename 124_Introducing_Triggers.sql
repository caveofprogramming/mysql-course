DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table sales(id int primary key, product varchar(30) not null, value numeric(10,2));

create table sales_update(
	id int primary key auto_increment,
	product_id int not null,
    changed_at timestamp,
	before_value numeric(10,2) not null,
    after_value numeric(10,2) not null);


insert into sales (id, product, value) values (3, "Cake", 0.80);

select * from sales;

update sales set value = 0.60 where id = 3;

delimiter $$

create trigger before_sales_update before update on sales for each row
begin

	insert into sales_update(product_id, changed_at, before_value, after_value)
		value (old.id, now(), old.value, new.value);

end$$


delimiter ;

select * from sales_update;

drop table sales_update;
