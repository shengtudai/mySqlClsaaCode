create table Student
(
	Sno char(20),
	Sname char(20),
	Sage int,
	Ssex char(5),
	Sdept char(20)
);

delete from Student where Sno = '1004';

select Sno, Sname from Student
where Sage > 21;

delete from Student
where Sno = '1002';

select Sname, 'Year Of Birth:' as BIRTH, 2021-Sage BIRTHDAY, LOWER(Sdept) DEPARTMENT
from Student;

insert into SC 
values('1001', '007', 99);

select distinct Sno from SC;

select * from Student where Sage in (20,22,24);

select Sname, Sno, Ssex from Student where Sname like '��%';

select Sno, Cno from SC where Grade is not null; 


select Sname, Sdept,Sage from Student where Sage >= 20 and Sage <=30;

select Sno, Grade 
from SC 
where Cno='001' order by Grade DESC;

�������������
���������������
�����򡡣�����ӣ�������ӣ��塡�ģţӣã�


select * from Student order by Sdept, Sage DESC;

select count(Sno) as num from Student;

select count(distinct Sno) from Sc;

select avg(Sage) from Student;

select avg(Sage) from Student where Ssex = '��';

select max(Sage) from Student where Ssex = '��'

select avg(Grade) from SC where Cno = '001';

select max(Grade) from SC where Cno = '001';