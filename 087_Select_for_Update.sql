DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

create table accounts(id int primary key auto_increment, balance numeric(10,2) default 0);

select * from accounts;


start transaction;

set @withdraw = 500;
set @account = 1;

select balance from accounts where id=@account for update;

-- Check that the balance is bigger than the withdrawal amount

update accounts set balance = balance - @withdraw where id=@account;

commit;
