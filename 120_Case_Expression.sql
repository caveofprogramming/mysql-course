
DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table products(id int primary key auto_increment, product varchar(40) not null, category enum('bakery', 'fruit', 'vegetable'));

insert into products (product, category) values ('cat treats', null);

create table fruits(id int primary key, product varchar(40) not null);
create table vegetables(id int primary key, product varchar(40) not null);
create table bakery(id int primary key, product varchar(40) not null);

select id, product, category from products order by id;

show tables;

delimiter $$

create procedure filltables(out unassigned longtext)
begin

	declare the_id int;
    declare the_product varchar(40);
    declare the_category enum('bakery', 'fruit', 'vegetable');
    declare finished boolean default false;

	declare cur cursor for select id, product, category from products order by id;

    declare continue handler for not found set finished := true;

    open cur;

    set unassigned := "";

    the_loop: loop

		fetch cur into the_id, the_product, the_category;

        if finished = true then
			leave the_loop;
		end if;

        case the_category
			when 'fruit' then
				insert into fruits (id, product) values (the_id, the_product);
			when 'vegetable' then
				insert into vegetables (id, product) values (the_id, the_product);
			when 'bakery' then
				insert into bakery (id, product) values (the_id, the_product);
			else
				set unassigned := concat(unassigned, the_product, ", ");
        end case;

    end loop;


    close cur;


end$$

delimiter ;

select * from products;


call filltables(@unassigned);

select * from fruits;
select * from vegetables;
select * from bakery;

select @unassigned;

drop procedure filltables;
