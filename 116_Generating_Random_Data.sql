-- id
-- email: user1@caveofprogramming.com, user2@caveofprogramming.com, ...
-- random date
-- enabled (random boolean)

DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table users (id int auto_increment primary key, email varchar(40) not null, registered date not null,
active boolean default false);

use test;

select round(rand());

select date(now()) - interval floor(10000*rand()) day;


drop table if exists users;

show tables;
