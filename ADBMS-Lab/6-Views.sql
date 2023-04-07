-- CREATE VIEW

create view StudentName as
select Registration_Number, Student_Name from Students;

-- VERIFY VIEW CREATION (optional)

show tables;

-- VIEW VIEW

select * from StudentName;

-- CREATE VIEW

create view ady_details as
select * from Students
where Registration_Number = 'CSC01';

-- VIEW VIEW

select * from ady_details;