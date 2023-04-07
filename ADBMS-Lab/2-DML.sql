-- INSERT
insert into Students(Registration_Number, Student_Name, Age, Class, Gender, Phone_Number, Email, Date_Of_Birth)
values ('CSC01', 'Adelicia', 21, 'MSCS', 'F', 8247474661, 'a.seq2804@gmail.com', '2001-04-28'),
('CSC02', 'Celesta', 21, 'MSCS', 'F', 9187462737, 'cel4214@gmail.com', '2001-03-28'),
('CSC03', 'Sudeep', 22, 'MSCS', 'M', 8457856234, 'sudeep20974@gmail.com', '2000-07-19'),
('CSC04','Max', 22, 'MSCS', 'M', 8787467527, 'maximus1039@gmail.com', '2000-12-01');

insert into internals(registration_number, subject_code, subject_name, semester, test_1, test_2, activity, total)
values ('CSC01', 'C01', 'Theory Of Computation', 1, 25, 25, 25, 50),
('CSC02', 'C01', 'Theory Of Computation', 1, 20, 21, 20, 40),
('CSC03', 'C01', 'Theory Of Computation', 1, 16, 15, 15, 20),
('CSC04', 'C01', 'Theory Of Computation', 1, 0, 10, 25, 10);

insert into internals(registration_number, subject_code, semester, test_1, test_2, activity, total)
values ('CSC01', 'C01', 1, 25, 25, 25, 50),
('CSC02', 'C01', 1, 20, 21, 20, 40),
('CSC03', 'C01', 1, 16, 15, 15, 20),
('CSC04', 'C01', 1, 0, 10, 25, 10);

insert into finals(registration_number, subject_code, subject_name, semester, theory, practicals, total, grade)
values ('CSC01', 'C01', 'Design Of Analysis', 1, 70, 35, 100, 'A++'),
('CSC02', 'C01', 'Design Of Analysis', 1, 55, 29, 90, 'A'),
('CSC03', 'C01', 'Design Of Analysis', 1, 43, 21, 70, 'B'),
('CSC04', 'C01', 'Design Of Analysis', 1, 35, 35, 50, 'D');

insert into department (department_id, department_name, staff_strength, hod_id) 
values('SJU01', 'Computer Science', 20, 'H01'),
('SJU02', 'English', 12, 'H02'),
('SJU03', 'Physics', 18, 'H03'),
('SJU04', 'Mathematics', 31, 'H04');

insert into staff(department_id, staff_id, staff_name) 
values('SJU01', 'SJU0101', 'Angelina'),
('SJU01', 'SJU0102', 'Mary'),
('SJU01', 'SJU0103', 'Karen'),
('SJU01', 'SJU0104', 'Joseph'),
('SJU02', 'SJU0201', 'Jonathan'),
('SJU02','SJU0202','Sanjana'),
('SJU02','SJU0203','David'),
('SJU03', 'SJU0301', 'Javier'), 
('SJU03','SJU0302','Mridula'),
('SJU03','SJU0303','Sumanth'),
('SJU03','SJU0304','Josephine'),
('SJU03','SJU0305','Karim'), 
('SJU04', 'SJU0401', 'Oindrila'),
('SJU04','SJU0402','Ila'),
('SJU04','SJU0403','Swapnil'),
('SJU04','SJU0404','Meryn'),
('SJU04','SJU0405','Sapna'),
('SJU04','SJU0406','Muthoot'),
('SJU04','SJU0407','Priya');

-- UPDATE

update Internals
set Subject_Name = 'Theory Of Computation'
where Subject_Code = 'C01';

select * from Internals;

-- DELETE
delete from Internals
where Test_1 = 0;

select * from Internals;
