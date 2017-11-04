USE CAVE_TEST;

show tables;

select * from books;

select concat("Title: ", title) from books;

select concat('My', ' ', 'name is', ' ', 'John');

select lcase('Fred');

select ucase(left('England', 2));

select trim('  fox  ');

set @greeting = 'Hello Bob. How are you?';

select substr(@greeting, 7, 3);
