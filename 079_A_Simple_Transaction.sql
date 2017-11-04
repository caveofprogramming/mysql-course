DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table books(id int primary key auto_increment, name varchar(50));

set autocommit=0;

insert into books (name) values ('The Universe');

delete from books where id=3;

update books set name = "The Mountain Version 2" where id=4;


select * from books;

commit;
-- or --
rollback;
