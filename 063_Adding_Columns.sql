DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table person (id int primary key auto_increment);
alter table person add column name varchar(50) not null after id;
alter table person drop column name;
