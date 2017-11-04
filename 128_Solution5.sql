DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table animals (id int primary key auto_increment, animal_name varchar(50) not null);

create table violations(id int primary key auto_increment, animal_name varchar(50) not null, moment datetime not null);


delimiter $$

create trigger before_animals_insert before insert on animals for each row
begin

	if new.animal_name like "%cat%" then

		insert into violations (animal_name, moment) values (new.animal_name, now());

		set new.animal_name = "xxx";

    end if;

end$$

delimiter ;

insert into animals (animal_name) values ("Housecat");

select * from animals;
select * from violations;
