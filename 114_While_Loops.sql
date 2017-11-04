USE CAVE_TEST;

delimiter $$

create procedure whiledemo()
begin

declare count int default 0;
declare numbers varchar(30) default "";


while count < 10 do

set numbers := concat(numbers, count);

set count := count + 1;

end while;

select numbers;

end$$

delimiter ;


call whiledemo();

drop procedure whiledemo;
