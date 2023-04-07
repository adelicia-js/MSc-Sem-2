-- Inner Joins
select Students.Student_Name, Internals.Test_1
from Students
inner join Internals on Internals.Registration_Number = Students.Registration_Number;

-- Left Joins
select Students.Student_Name, Internals.Test_1
from Students
left join Internals on Internals.Registration_Number = Students.Registration_Number
order by Internals.Test_1;

-- Right Joins
select Students.Student_Name, Internals.Test_1
from Students
right join Internals on Internals.Registration_Number = Students.Registration_Number
order by Students.Age desc;