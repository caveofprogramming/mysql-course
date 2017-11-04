DROP DATABASE IF EXISTS CAVE_TEST;
CREATE DATABASE CAVE_TEST;
USE CAVE_TEST;
--
-- 1. Create table of words and adjectives and populate it.
--


create table words(id int primary key auto_increment, noun varchar(20) not null, adjective varchar(20) not null);


insert into words (noun, adjective) values ("sun", "fast");
insert into words (noun, adjective) values ("chair", "slow");
insert into words (noun, adjective) values ("stone", "new");
insert into words (noun, adjective) values ("dog", "greasy");
insert into words (noun, adjective) values ("cat", "blue");
insert into words (noun, adjective) values ("book", "high");
insert into words (noun, adjective) values ("sky", "evil");
insert into words (noun, adjective) values ("tree", "beautiful");
insert into words (noun, adjective) values ("apple", "sly");
insert into words (noun, adjective) values ("head", "ordinary");


select * from words;

--
-- Create procedure that produces lists of nouns and adjectives separately
--

delimiter $$

create procedure create_lists(out nouns text, out adjectives text)
begin

	declare finished bool default false;
    declare the_noun varchar(20);
    declare the_adjective varchar(20);
    declare first boolean default true;
	declare cur cursor for select noun, adjective from words order by id;

    declare continue handler for not found set finished := true;

    set nouns := "";
    set adjectives := "";

	open cur;

	the_loop: loop

			fetch cur into the_noun, the_adjective;

            if finished then
				leave the_loop;
			end if;

            -- Deal with the comma. Only add it if
            -- this isn't the first record.
            if first then
				set first := false;
			else
				set nouns := concat(nouns, ",");
                set adjectives := concat(adjectives, ",");
			end if;

            -- Now concat the results from the table.
            set nouns := concat(nouns, the_noun);
            set adjectives := concat(adjectives, the_adjective);

	end loop;

	close cur;

end$$


delimiter ;


call create_lists(@nouns, @adjectives);

select @nouns, @adjectives;

drop procedure create_lists;

--
-- 2. Generate table of "star" names.alter
--

create table stars(id int primary key auto_increment, name varchar(40) not null);

delimiter $$

create procedure create_stars()
begin

	declare the_noun varchar(20);
    declare the_adjective varchar(20);


    declare finished boolean default false;

	declare nouns_cursor cursor for select noun from words order by rand();
    declare adjectives_cursor cursor for select adjective from words order by rand();

    declare continue handler for not found set finished := true;

    open nouns_cursor;
    open adjectives_cursor;

    the_loop: loop

		fetch nouns_cursor into the_noun;
        fetch adjectives_cursor into the_adjective;

        if finished then
			leave the_loop;
		end if;

        -- Uppercase first letters
        set the_adjective = concat(ucase(left(the_adjective, 1)), substring(the_adjective, 2));
        set the_noun = concat(ucase(left(the_noun, 1)), substring(the_noun, 2));

        insert into stars (name) values (concat(the_adjective, " ", the_noun));

    end loop;

    close nouns_cursor;
    close adjectives_cursor;

end$$

delimiter ;

call create_stars();

drop procedure create_stars;

select * from stars;

set sql_safe_updates=0;
delete from stars;

--
-- 3 and 4
--

alter table stars add column born date;
alter table stars add column died date;

delimiter $$

create procedure create_stars_with_dates()
not deterministic
begin

	declare the_noun varchar(20);
    declare the_adjective varchar(20);
	declare born_date date;
    declare died_date date;
    declare min_died date;
    declare max_died date;
    declare days_lifespan int;

    declare finished boolean default false;

	declare nouns_cursor cursor for select noun from words order by rand();
    declare adjectives_cursor cursor for select adjective from words order by rand();

    declare continue handler for not found set finished := true;

    open nouns_cursor;
    open adjectives_cursor;

    the_loop: loop

		fetch nouns_cursor into the_noun;
        fetch adjectives_cursor into the_adjective;

        if finished then
			leave the_loop;
		end if;

        -- Uppercase first letters
        set the_adjective = concat(ucase(left(the_adjective, 1)), substring(the_adjective, 2));
        set the_noun = concat(ucase(left(the_noun, 1)), substring(the_noun, 2));

        -- Figure out birth date; at least 20 years ago, and not more than 60 years before
		-- that (80 years total maximum)
		select date(now()) - interval 20 year - interval 365*60*rand() day into born_date;

		-- When was the earliest they could have died? At least 19 years after being born.
		select born_date + interval 19 year into min_died;

        set died_date := null;

        if rand() <= 0.4 then

			-- When was the latest they could have died? (Today)
			select date(now()) into max_died;

			-- Calculate a random fraction of the interval between the birth date
			-- and maximum death date.
			select datediff(max_died, min_died)*rand() into days_lifespan;

			-- Add this number of days to when they were born to get the death date.
			select born_date + interval 19 year + interval days_lifespan day into died_date;

        end if;

        insert into stars (name, born, died) values (concat(the_adjective, " ", the_noun), born_date, died_date);

    end loop;

    close nouns_cursor;
    close adjectives_cursor;

end$$

delimiter ;

delete from stars;

call create_stars_with_dates();
drop procedure create_stars_with_dates;

select from_days(datediff(died, born)) from stars where died is not null;


select * from stars;
