USE CAVE_TEST;

desc users;

delimiter $$

create procedure cursortest()
begin

	declare the_email varchar(40);

	declare cur1 cursor for select email from users order by id;

	open cur1;

	fetch cur1 into the_email;

	close cur1;

	select the_email;

end$$

delimiter ;

call cursortest();

drop procedure cursortest;

select * from users;
