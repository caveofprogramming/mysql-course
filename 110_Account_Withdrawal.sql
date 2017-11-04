USE CAVE_TEST;

delimiter //

create procedure withdraw(in account_id int, in amount numeric(7, 2), out success bool)
begin

    declare current_balance numeric(7, 2) default 0.0;

    select balance into current_balance from accounts where id=account_id;

    if current_balance >= amount then
		update accounts set balance = balance - amount where id=account_id;
        set success=true;
	else
		set success=false;
	end if;

	-- Check the current balance of the account
    -- If balance big enough, do withdrawal

end//

delimiter ;

call withdraw(1, 251, @success);

select @success;

drop procedure withdraw;
