USE CAVE_TEST;

delimiter $$

create procedure loopdemo()
begin

declare count int default 0;
declare numberlist varchar(30) default "";

the_loop: loop

	if count = 10 then
		leave the_loop;
	end if;

	set numberlist := concat(numberlist, count);

    if count != 9 then
		set numberlist := concat(numberlist, ", ");
	end if;

	set count := count + 1;

end loop;

select numberlist;

end$$


delimiter ;

call loopdemo();


drop procedure loopdemo;
