DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table seats (id int primary key auto_increment, free bool);

insert into seats (free) values (true), (false), (true), (true), (false), (true), (false), (true), (true), (false), (true);

select s1.id as 'Seat One ID' from seats s1 join seats s2 on s1.id+1=s2.id where s1.free=true and s2.free=true;
