DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table libraries (id int primary key auto_increment, name varchar(50) not null);
create table books (id int primary key auto_increment, title varchar(50) not null, library_id int not null, foreign key (library_id) references libraries(id));

insert into libraries (name) values ('York');
insert into libraries (name) values ('Nottingham');
insert into libraries (name) values ('Manchester');

start transaction;

select id from libraries where name="Nottingham" lock in share mode;

insert into books (title, library_id) values ("Painting for Beginners", 2);

commit;
