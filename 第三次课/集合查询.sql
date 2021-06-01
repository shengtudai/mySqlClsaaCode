-- union ��
select *
from student
where Sdept = 'CS'
union
select *
from student
where Sage <22;
��
-- union all ��ȥ��
select *
from student
where Sdept = 'CS'
union all
select *
from student
where Sage <22;

select Sno
from SC
where Cno = '1'
union
select Sno
from SC
where Cno='2';

select Sname
from Student
union
select Cname
from course;

-- ������
select *
from student
where Sdept = 'CS'
intersect
select *
from student
where Sage < 21;

select Sno
from SC
where Cno='1'
intersect
select Sno
from SC
where Cno='5';

--  Ƕ��ʵ��
select Sno
from SC
where Cno='1'
and Sno 
in
(select Sno from SC where Cno='5');

-- �����
select *
from student
where Sdept='CS'
except
select *
from student
where Sage<20;

insert into student values('06','���ݿ�',23,'��','CS');
select distinct Sname
from student
where Sname not in 
(select Cname from Course);

select Sno, Cno
from Sc, (select Sno, Avg(Grade) from SC group by Sno) as Avg_sc(avg_sno, avg_grade)
where SC.Sno=Avg_sc.avg_sno and SC.Grade>=Avg_sc.avg_grade;

select Sname
from student, (select Sno from SC where Cno='1') as SC1
where student.Sno=SC1.Sno;