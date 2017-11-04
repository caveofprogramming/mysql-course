DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table dates(id int primary key auto_increment, applied date not null);

select curdate();

insert into dates (applied) values (curdate() - interval 10 year);

select * from dates;

select curdate() + interval 36 day;

select date_sub('2010-06-16', interval 5 month);

select id, year(applied) from dates where applied = '2011-02-08';

set @born = '1974-05-15';

select dayname(@born);

select from_days(datediff(curdate(), @born));
