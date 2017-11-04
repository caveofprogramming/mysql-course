USE CAVE_TEST;

select * from books;
select id, title into @theId, @theTitle from books where id=1;


select @theId, @theTitle;

DELIMITER $$

CREATE PROCEDURE `ShowBooks`(in theId int, out outId int, out outTitle varchar(50))
begin
select id, title into outId, outTitle  from books where id = theId;
end$$

DELIMITER ;

call ShowBooks(4, @id, @title);

select @id, @title;

drop procedure ShowBooks;
