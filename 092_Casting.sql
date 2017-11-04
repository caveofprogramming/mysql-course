USE CAVE_TEST;

select cast('1974-05-15' as char);

show tables;

select concat("Number of books: ", cast(count(*) as char))  from books;
