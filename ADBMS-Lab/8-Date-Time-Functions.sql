-- SYSDATE()

select sysdate();

-- CURDATE()

select curdate();

-- CONVERT_TZ()

select convert_tz('2001-04-28 12:00:00', '+00:00', '+06:30');

-- CURTIME()

select curtime();

-- DATEDIFF()

select datediff('2001-04-28 22:59:59','2001-04-30');

-- DATE_ADD()

select date_add('1900-01-01 00:00:00', INTERVAL '-1 10' DAY_HOUR);

-- DATE_FORMAT()

select date_format('2001-04-28 23:00:00', '%W %D %M %Y');