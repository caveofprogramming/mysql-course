USE CAVE_TEST;

delimiter //

create procedure withdraw(in flag bool)
begin

    declare current_balance numeric(7, 2) default 0.0;

    select current_balance;

	-- Check the current balance of the account
    -- If balance big enough, do withdrawal

end//

delimiter ;

drop procedure withdraw;
