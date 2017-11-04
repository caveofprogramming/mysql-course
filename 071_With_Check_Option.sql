DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table book (id int primary key auto_increment, name varchar(50) not null);

insert into book (id, name) values (1, "The Thirty-Nine Steps");

insert into book (id, name) values (20, "War and Peace");

create view bookview as select id, name from book where id < 20 with check option;

drop view bookview;
