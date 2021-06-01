create table jober(
	Jid char(10) primary key,
	Jname char(10),
	Jage smallint,
	Jjob char(10),
	Jpay int,
	Did char(10),
	foreign key(Did) references Dep(Did)
)

create table Dep(
	Did char(10) primary key,
	Dname char(10),
	DManger char(10),
	DTel char(20)
)

-- 新建学生表
drop table student
create table Student
(
	Sno char(20) primary key,
	Sname char(20) not null ,
	Sage smallint check(Sage<29),
	Ssex char(5) check(Ssex in ('男','女')),
	Sdept char(20),
	check(Ssex='女' or Sname not like 'Ms.%')
);
alter table student 
add exam char(10)
select * from student

alter table student
alter column exam int

alter table student
drop column exam

drop table student
create table Student
(
	Sno char(20) primary key
	constraint C1 check(Sno between 90000 and 99999),
	Sname char(20) 
	constraint C2 not null ,
	Sage smallint 
	constraint C3 check(Sage<29),
	Ssex char(5) 
	constraint C4 check(Ssex in ('男','女')),
	Sdept char(20),
	check(Ssex='女' or Sname not like 'Ms.%')
);

alter table student
drop constraint C3;

alter table student
add constraint C3 check(Sage <40);


-- 新建课程表
create table Course
(
	Cno char(5),
	Cnmae char(20),
	Cpno char(10),
	Ccredit char(10),
	Primary key(Cno)
);

-- 新建成绩表
drop table SC
create table SC
(
	Sno char(5),
	Cno char(3),
	Grade int check(Grade between 0 and 100),
	PRIMARY key(Sno, Cno),
);
