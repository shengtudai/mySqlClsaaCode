create table Course
(
	Cno char(5),
	Cnmae char(20),
	Cpno char(10),
	Ccredit char(10),
	Primary key(Cno)
)


insert into Course
values('001', '数据结构', '王强');

insert into Course
values('001', '计算机网络', '李刚');

create table SC
(
	Sno char(5),
	Cno char(3),
	Grade int,
	PRIMARY key(Sno, Cno)
)

create table SC
(
	Sno char(5),
	Cno char(3),
	Grade int,
	PRIMARY key(Sno, Cno),
)



insert into SC
values('1001', '001', 98);

select * from Course;


update Student
set Sname='张二', Sage=18
where Sno = '1002';