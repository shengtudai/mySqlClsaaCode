-- union 并
select *
from student
where Sdept = 'CS'
union
select *
from student
where Sage <22;
　
-- union all 不去重
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

-- 交操作
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

--  嵌套实现
select Sno
from SC
where Cno='1'
and Sno 
in
(select Sno from SC where Cno='5');

-- 差操作
select *
from student
where Sdept='CS'
except
select *
from student
where Sage<20;

insert into student values('06','数据库',23,'男','CS');
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