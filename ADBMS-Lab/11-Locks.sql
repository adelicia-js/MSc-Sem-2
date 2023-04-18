-- Start a transaction
start transaction;

-- Lock some tables
lock tables finals read, students write;

-- Testing out operations
select * from finals;
select * from students;
-- success/works

update finals
set subject_code = 'C02'
where subject_code = 'C01';
-- fails/error 

update students
set class = 'MSCSC'
where class = 'MSCS';
-- success/works

select * from internals;
-- fails/error

-- Commit changes
commit;

-- Unlock tables
unlock tables;

-- Oh also, if you do this
lock tables finals read, students write;
-- and then, do this
lock tables internals read;
-- i.e., lock another table in a different statement
-- (show locked tables)
show open tables where in_use > 0
-- the above will show you that the previously locked tables, i.e., students and finals are now unlocked
-- operations on them will throw an error