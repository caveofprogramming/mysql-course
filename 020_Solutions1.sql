USE CAVE_TEST;

-- 1. Select all the rows where age is greater than 20 but less than 30
select * from users where age > 20 and age < 30;


-- 2. Select all rows where age is between 20 (inclusive) and 30 (inclusive)
select * from users where age >= 20 and age <= 30;


-- 3. Select all rows where age is between 20 (inclusive) and 30 (inclusive) and the name is not “Vicky”
select * from users where (age >= 20 and age <= 30) and not name = "Vicky";

-- 4. Select all rows where either the name is null or the name does not contain the letter “e”
select * from users where (name not like '%e%') or (name is null);


-- 5. Select all rows for users aged between 30 and 40 whether the name contains either the letter “o” or “e”
select * from users where (age > 30 and age < 40) and (name like '%o%' or name like '%e%');


-- 6. Select all rows where either the name contains an “o” or the id is less than 5, but not both
select * from users where name like '%o%' xor id < 5;
