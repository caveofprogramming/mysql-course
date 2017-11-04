DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table parts(id int primary key auto_increment, part_id varchar(20) default null, catalog_id varchar(20) not null);

insert into parts(part_id, catalog_id) values (null, 'AB126');

select if(part_id is not null, part_id, catalog_id) as identifier from parts;

select if(part_id is not null, part_id, catalog_id) as identifier from parts
where if(part_id is not null, part_id, catalog_id) = 'XYZ35';

select * from parts;

select ifnull(part_id, catalog_id) as identifier from parts;
