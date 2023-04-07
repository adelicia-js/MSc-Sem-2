-- CREATE USER

Create user ady@localhost identified by 'ady2838';

-- Connecting to new user…
-- (on Command Line/Powershell)

-- >mysqlsh
-- >\sql
-- >\connect ady@localhost -p

-- GRANT

grant all on college_db.* to ady@localhost;

show grants for ady@localhost;

-- REVOKE

revoke all on college_db.* from ady@localhost;

show grants for ady@localhost;
