
use student
-- �½�ѧ����
create table Student
(
	Sno char(20),
	Sname char(20),
	Sage int,
	Ssex char(5),
	Sdept char(20)
);

-- �½��γ̱�
create table Course
(
	Cno char(5),
	Cnmae char(20),
	Cpno char(10),
	Ccredit char(10),
	Primary key(Cno)
);

-- �½��ɼ���
create table SC
(
	Sno char(5),
	Cno char(3),
	Grade int,
	PRIMARY key(Sno, Cno),
)

-- ��������
insert into Student
values('01', '����', 20, '��', 'CS');
insert into Student
values('02', '��ǿ', 19, '��', 'CV');
insert into Student
values('03', 'С��', 23, 'Ů', 'NT');
insert into Student
values('04', 'С��', 22, 'Ů', 'CS');
insert into Student
values('05', 'С��', 22, '��', 'CV');

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


