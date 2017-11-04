DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table address (id int primary key auto_increment, street varchar(50));
insert into address (street) values ('Apple Lane'), ('Broad Street'), ('Church Lane');

create table person(id int primary key auto_increment, name varchar(50), address_id int, foreign key (address_id) references address(id));
insert into person(name, address_id) values ('Anna', 1);
insert into person(name, address_id) values ('Bob', 2);
insert into person(name, address_id) values ('Clare', 3);

-- This won't work:
-- insert into person(name, address_id) values ('David', 4);

-- But this will:
insert into person(name, address_id) values ('Arnold', 1);
