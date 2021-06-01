drop table Student;
create table Student
(
	Sno char(9) primary key,
	Sname char(20) not null,
	Sage int,
	Ssex char(5),
	Sdept char(20)
);
drop table Course;
create table Course
(
	Cno char(4),
	Cname char(20),
	Cpno char(10),
	Ccredit char(10),
	Primary key(Cno)
);
drop table SC;
create table SC
(
	Sno char(9) not null,
	Cno char(4) not null,
	Grade smallint,
	PRIMARY key(Sno, Cno),
	foreign key(Sno) references Student(Sno),
	foreign key(Cno) references Course(Cno)
);

insert into Student
values('01', '小花', 23, '女', 'NT');
insert into Student
values('02', '小红', 22, '女', 'CS');
insert into Student
values('03', '小刚', 22, '男', 'CV');

insert into Course
values('1', '数据库', '5','4');
insert into Course
values('2', '数学', NULL ,'2');
insert into Course
values('3', '系统信息', '1','4');
insert into Course
values('4', '操作系统', '6','3');
insert into Course
values('5', '数据结构', '7','4');
insert into Course
values('6', '数据处理', NULL, '2');
insert into Course
values('7', 'PASCAL语言', '6','4');