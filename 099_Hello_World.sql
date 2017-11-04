DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;

delimiter ;;

use CAVE_TEST;;


create procedure HelloWorld()
begin
	select "Hello World!!!";
end;;

call HelloWorld();;

drop procedure HelloWorld;
