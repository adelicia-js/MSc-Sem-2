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
where Theory < 50;

select * from finals;

savepoint college_save;

commit;

-- ROLLBACK TO SAVEPOINT (METHOD-2)

start transaction;

select * from Finals;

delete from Finals
where Theory < 50;

select * from finals;

savepoint college_save;

commit;
