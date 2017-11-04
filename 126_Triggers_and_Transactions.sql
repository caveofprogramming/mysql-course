DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

show tables;

create table sales(id int primary key auto_increment, product varchar(45) not null, sold numeric(8,2) not null);

create table sales_totals(id int primary key auto_increment, total numeric(11,2) not null, day date);

alter table sales_totals add unique (day);

show index from sales_totals;


delimiter $$

create trigger before_sales_insert before insert on sales for each row
begin

	declare today date default date(now());
	declare count int default 0;

	select count(*) from sales_totals where day = today into count for update;

    if count = 0 then
		insert into sales_totals (total, day) values (new.sold, today);
	else
		update sales_totals set total = total + new.sold where day = today;
	end if;

end$$

delimiter ;

drop trigger before_sales_insert;

select * from sales;
select * from sales_totals;


insert into sales (product, sold) values ("Dog Lead Deluxe", 10.00);


set sql_safe_updates=0;
delete from sales;
delete from sales_totals;
