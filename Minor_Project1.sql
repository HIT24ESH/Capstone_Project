use master
create database Student_Enrollment
use Student_Enrollment
create table Student
(
Student_ID int primary key,
Student_Name varchar(100),
Date_of_Birth date,
Email varchar(100),
Major varchar(50)
);
create table Courses
(
Course_ID int primary key,
Course_Name varchar(100),
Credit_hours int,
Instructor varchar(100),
Student_ID int,
foreign key (Student_ID) references Student(Student_ID)
);
insert into Student(Student_ID, Student_Name, Date_of_Birth, Email, Major)
values(1, 'john doe', '1998-05-15', 'john.doe@gmail.com', 'computer science'),
(2, 'jane smith', '1997-04-22', 'jane.smith@gmail.com', 'Biology'),
(3, 'mark johnson', '1999-03-10', 'mark.john@gmail.com', 'history'),
(4, 'sarah lee', '1996-11-28', 'sarah.lee@gmail.com', 'chemistry'),
(5, 'emily davis', '1995-07-12', 'emily.davis@gmail.com', 'commerce'),
(6, 'micheal white', '1994-01-24', 'white.345@gmail.com', 'economics'),
(7, 'Rachel brown', '1998-09-17', 'brown20@gmail.com', 'political science'),
(8, 'daniels adams', '1999-10-20', 'daniels.adams1@gmail.com', 'english'),
(9, 'amanda miller', '1997-08-16', 'amada.miller@gmail.com', 'psychology'),
(10, 'kevin wright', '2000-02-13', 'kevin.wright2@gmail.com', 'philoshophy'),
(11, 'olivia harris', '2001-07-05', 'olivia.harris@gmail.com', 'geography'),
(12, 'sarah thompson', '1996-08-14', 'sarah.thomp@gmail.com', 'computer science'),
(13, 'brian wilson', '1995-06-29', 'brian.wilson@gmail.com', 'history'),
(14, 'lauren hall', '2000-11-9', 'lauren.hall@gmail.com', 'economics'),
(15, 'ethan brooks', '2001-01-31', 'ethan.brooks@gmail.com', 'mathematics'),
(16, 'megan foster', '1994-04-11', 'megane.foster@gmail.com', 'biology'),
(17, 'justin simmons', '1993-03-22', 'justin.simmons@gmail.com', 'chemistry'),
(18, 'gabrille parker', '1997-04-21', 'gabrielle.parker@gmail.com', 'geoghraphy'),
(19, 'logan turner', '1999-06-23', 'logan.turner@gmail.com', 'political science'),
(20, 'victoria lewis', '1996-07-10', 'victoria.lewis@gmail.com', 'physics'),
(21, 'jack williams', '2002-12-25', 'jack.williams@gmail.com', 'english'),
(22, 'emma parker', '1995-08-16', 'emma.parker@gmail.com', 'philoshophy'),
(23, 'nicholas hall', '1998-09-18', 'nicholas.hall@gmail.com', 'commerce'),
(24, 'lily wilson', '1993-12-28', 'lily.wilson@gmail.com', 'sociology'),
(25, 'shopia evans', '1996-09-24', 'shopia.evans@gmail.com', 'mechanical engg'),
(26, 'samuel davis', '1994-08-1', 'samuel.davis@gmail.com', 'geology'),
(27, 'scarllet truder', '1995-07-21', 'scarllet.true@gmail.com', 'sociology'),
(28, 'andrew mitchell', '1999-02-13', 'and.mitch@gmail.com', 'computer science'),
(29, 'james paul', '2000-10-19', 'j.paul@gmail.com', 'geology'),
(30, 'stuart frank', '2001-06-29', 'stuart.frank@gmail.com', 'mechanical science');

insert into Courses(Course_ID,Course_Name,Credit_hours,Instructor, Student_ID)
values(101,'introduction to cs',3,'prof.anderson',1),
(102,'quantum physics',4,'prof.williams',20),
(103,'microbiology',3,'prof.hartley',2),
(104,'international relation',5,'prof.rodrigues',5),
(105,'macroeconomics',6,'prof.stuart',6),
(106,'organic synthesis',3,'prof.david',4),
(107,'comparative literature',4,'prof.robert',8),
(108,'data analytics',3,'prof.maddinson',28),
(109,'world history',4,'prof.cook',3),
(110,'bussiness studies',3,'prof.taylor',23),
(111,'climate and topography',3,'prof.turner',11),
(112,'development of psychology',5,'prof.brown',7),
(113,'social studies',4,'prof.rodrigues',10),
(114,'astrophysics',3,'prof.williams',19),
(115,'microeconomics',4,'prof.stuart',14),
(116,'genetics',6,'prof.hartley',16),
(117,'social literature',3,'prof.robert',21),
(118,'carbondating',4,'prof.david',17),
(119,'ancient history',2,'prof.cook',13),
(120,'data structures',6,'prof.maddinson',30),
(121,'social and cultural diversity',4,'prof.davis',22),
(122,'advance function and limits',5,'prof.adams',15),
(123,'cryptography',4,'prof.miller',26),
(124,'motor induction theory',3,'prof.harris',25),
(125,'mobile app development',6,'prof.anderson',28),
(126,'cognitive psychology',4,'prof.turner',20),
(127,'trignometry',3,'prof.evans',18),
(128,'public speaking',5,'prof.thompson',27),
(129,'sociology of culture',3,'prof.campbell',24),
(130,'renewable future',4,'prof.patterson',11);

select*from Student

select*from Courses

select*from Student
where Major= 'computer science';

select * from student 
where Date_of_Birth<'2000-01-01';

select * from Courses
where instructor='prof.anderson' ;

select major, count(*) as total_students
from Student group by major;

select top 1 * from Courses
order by  Credit_hours desc;

select top 1 * from Courses
order by  Credit_hours asc ;

select * from Student
where Date_of_Birth in(
select max(Date_of_Birth) as Oldest from Student
union
select min(Date_of_Birth) as youngest from Student
);


insert into Courses values(131,'advance database management', 4, 'prof.martha',31);
insert into Student values(31,'ricky bhoi', '1999-03-20', 'ricky.bhoi2@gmail.com', 'Mechanical science');

update Student set Email = 'update.email@gmail.com'
where Student_ID = 1;


select * from Student
where Student_ID in(select Student_ID from Courses
where Course_ID = 101);

select * from Courses
where Course_ID in 
(select Course_ID from Courses
group by Course_ID having count(*) < 101);

