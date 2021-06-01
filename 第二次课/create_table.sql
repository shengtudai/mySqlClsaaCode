
use student
-- 新建学生表
create table Student
(
	Sno char(20),
	Sname char(20),
	Sage int,
	Ssex char(5),
	Sdept char(20)
);

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
create table SC
(
	Sno char(5),
	Cno char(3),
	Grade int,
	PRIMARY key(Sno, Cno),
)

-- 插入数据
insert into Student
values('01', '张三', 20, '男', 'CS');
insert into Student
values('02', '王强', 19, '男', 'CV');
insert into Student
values('03', '小花', 23, '女', 'NT');
insert into Student
values('04', '小红', 22, '女', 'CS');
insert into Student
values('05', '小刚', 22, '男', 'CV');

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

insert into SC
values('01', '2', 98);
insert into SC
values('01', '5', 99);
insert into SC
values('02', '5', 90);
insert into SC
values('02', '1', 88);
insert into SC
values('03', '4', 84);
insert into SC
values('04', '1', 80);
insert into SC
values('05', '5', 79);


