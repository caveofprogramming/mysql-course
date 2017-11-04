USE CAVE_TEST;

show tables;

select * from accounts;

delimiter //

create procedure withdraw(in flag bool)
begin

	if flag=true then
		select "Hello";
	else
		select "Goodbye";
	end if;

end//

delimiter ;

call withdraw(true);

drop procedure withdraw;
