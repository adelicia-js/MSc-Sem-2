-- CREATE DATABASE
create database college_db;

-- USE DATABASE
use college_db;

-- CREATE TABLES
create table Students (
    Registration_Number varchar(6) primary key, 
    Student_Name varchar(100) not null, 
    Age integer not null,
    Class char(10) not null,
    Gender char(6) not null,
    Phone_Number bigint not null,
    Email varchar(100) not null,
    Date_Of_Birth date not null
);

create table Internals (
    Registration_Number varchar(6) primary key,
    Subject_Code varchar(100) not null,
    Subject_Name varchar(100) not null,
    Semester integer not null, 
    Test_1 integer not null,
    Test_2 integer not null, 
    Activity integer not null,
    Total integer not null,
    foreign key (Registration_Number) references Students(Registration_Number)
);

create table Finals (
    Registration_Number varchar(6) primary key,
    Subject_Code varchar(100) not null,
    Subject_Name varchar(100) not null,
    Semester integer not null, 
    Theory integer not null,
    Practicals integer not null, 
    Total integer not null,
    Grade varchar(10) not null,
    foreign key (Registration_Number) references Students(Registration_Number)
);

create table Department (
    Department_ID varchar(10) primary key,
    Department_Name varchar(20) not null,
    Staff_Strength integer not null,
    HOD_ID varchar(20) not null
);


create table Staff (
    Department_ID varchar(20) not null, 
    Staff_ID varchar(20) primary key,
    Staff_Name varchar(100) not null,
    foreign key (Department_ID) references Department(Department_ID)
);

-- DESCRIBE

describe Students;
describe Department;

-- ALTER

alter table Students
add Gender char(6) not null;

describe Students;

alter table department
modify HOD_ID integer not null;

describe Department;

alter table Internals
modify Subject_Code varchar(100);

-- DROP

drop table Department;

describe Department;

-- TRUNCATE

truncate table Students;

select * from Students;