USE CAVE_TEST;

desc users;


set sql_safe_updates=0;

drop table if exists leads;

create table leads(id int auto_increment primary key, email varchar(40) not null);

delimiter $$

create procedure CAVE_TEST.cursortest()
begin

	declare the_email varchar(40);
  declare finished boolean default false;

	declare cur1 cursor for select email from users where active = true and registered > date(now()) - interval 1 year;

    declare continue handler for not found set finished := true;

    delete from leads;

	open cur1;

    the_loop: loop

		fetch cur1 into the_email;

        if finished then
			leave the_loop;
		end if;

        insert into CAVE_TEST.leads (email) values (the_email);

    end loop the_loop;

	close cur1;

end$$

delimiter ;



call cursortest();

drop procedure cursortest;

select * from users;


select count(*) from leads;
