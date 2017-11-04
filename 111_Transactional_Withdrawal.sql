USE CAVE_TEST;

delimiter //

create procedure withdraw(in account_id int, in amount numeric(7, 2), out success bool)
begin

    declare current_balance numeric(7, 2) default 0.0;

    start transaction;

		select balance into current_balance from accounts where id=account_id for update;

		if current_balance >= amount then
			update accounts set balance = balance - amount where id=account_id;
			set success=true;
		else
			set success=false;
		end if;

	commit;

end//

delimiter ;

drop procedure withdraw;
