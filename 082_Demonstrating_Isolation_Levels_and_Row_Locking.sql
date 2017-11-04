-- Database isolation levels

-- Serializable
-- Repeatable read
-- Read committed
-- Read uncommitted

USE CAVE_TEST;

-- Connection 1
set transaction isolation level serializable;

start transaction;

select * from books;

commit;


-- Connection 2

select @@session.tx_isolation;

start transaction;

select * from books;

update books set name = "The Mountain" where id=4;

commit;
