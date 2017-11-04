-- Create the following tables in MySQL

-- Products

-- primary key
-- name
-- category
-- sell by date
-- sold or not
-- moment of sale
-- quantity
-- weight Kg

use CAVE_TEST;

create table products(id int primary key auto_increment, name varchar(40), category enum('Baked Goods', 'Fruit and Veg', 'Dairy'),
sell_by date, sold bool, moment_of_sale timestamp, quantity int, weight numeric(6,3));

select * from products;

insert into products(name, category, sell_by, sold, moment_of_sale, quantity, weight) values
("Sack of Potatoes", "Fruit and Veg", "2016-10-14", true, "2015-11-01 10:23:45", 30, 10);

-- ---------------------------------------
-- Personnel

-- primary key
-- given name
-- family name
-- gender
-- telephone number
-- marital status
-- age
-- salary
-- position
-- date started

-- ---------------------------------------

create table personnel(id int primary key auto_increment, given_name varchar(50), family_name varchar(50), gender enum('MALE', 'FEMALE'),
telephone varchar(100), married bool, age tinyint, salary int, position enum('developer', 'manager', 'CEO'), date_started date);

insert into personnel(given_name, family_name, gender, telephone, married, age, salary, position, date_started) values
("Arnold", "Brown", "MALE", "01348908340", true, 34, 34000, 'developer', "2014-05-06");


select * from personnel;

-- Address

-- First line
-- Second line
-- City
-- Region
-- zip/postal code
-- Two letter country code

create table address(id int primary key auto_increment, first_line varchar(60), second_line varchar(60),
city varchar(60), region varchar(60), postal_code char(7), country_code char(2));

insert into address(first_line, second_line, city, region, postal_code, country_code) values
("The Badger Inn", "23 Church Lane", "Badgerton", "East Badgering", "BA4DER", "UK");

select * from address;
