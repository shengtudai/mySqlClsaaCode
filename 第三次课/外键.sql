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
values('01', 'С��', 23, 'Ů', 'NT');
insert into Student
values('02', 'С��', 22, 'Ů', 'CS');
insert into Student
values('03', 'С��', 22, '��', 'CV');

insert into Course
values('1', '���ݿ�', '5','4');
insert into Course
values('2', '��ѧ', NULL ,'2');
insert into Course
values('3', 'ϵͳ��Ϣ', '1','4');
insert into Course
values('4', '����ϵͳ', '6','3');
insert into Course
values('5', '���ݽṹ', '7','4');
insert into Course
values('6', '���ݴ���', NULL, '2');
insert into Course
values('7', 'PASCAL����', '6','4');