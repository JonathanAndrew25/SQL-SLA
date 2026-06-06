create table students(
	std_id int primary key,
    std_name varchar(20),
    course varchar(20)
);
insert into students values (1,'Jonathan','CSE'),(2,'Logesh','ECE'),(3,'Akshay','EEE'),(4,'Sundar',null);
select * from students;

create table college(
	std_id int,
    college_id int,
    college_name varchar(20)
);
insert into college values (1,34567,'Sathyabama College'),(2,67890,'St Joseph College'),(3,87654,'Sathyabama College');
select * from college;

select students.std_name,course,college.college_id,college_name from students left join college on students.std_id = college.std_id
union
select students.std_name,course,college.college_id,college_name from students Right join college on students.std_id = college.std_id;

select lower(substring('HELLO WORLD',7,5)) as OUTPUT;
