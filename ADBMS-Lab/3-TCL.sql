-- SAVEPOINT

start transaction;

savepoint college_save;

-- COMMIT

start transaction;

select * from Finals;

delete from Finals
where Theory < 50;

select * from finals;

savepoint college_save;

commit;

-- ROLLBACK (METHOD-1)

start transaction;

select * from Finals;

delete from Finals

where Theory > 50;

select * from Finals;

rollback;

-- ROLLBACK TO SAVEPOINT (METHOD-2)

start transaction;

select * from Finals;

savepoint college_save;

delete from Finals
where Subject_Code = 'C01';

select * from Finals;

rollback to savepoint college_save;

commit;

select * from Finals;