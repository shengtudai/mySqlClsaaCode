select Sno, Sname,Sdept from Student where Sdept in 
(select Sdept from Student where Sname='张三')

--
select Sname from Student where Sno in 
(select Sno from SC where Cno='1')

--
select Student.Sno, Student.Sname from Student,Course,SC where Student.Sno=SC.Sno and SC.Cno=Course.Cno and Course.Cname='数据结构';

select Sno, Sname from Student where Sno in (
select Sno from SC where Cno in(
select Cno from Course where Cname='数据结构')
);

select Sno ,Cno 
from SC 
where Grade >= (select AVG(Grade) from SC);

select Sno ,Cno 
from SC x 
where Grade >= (select AVG(Grade) from SC y where x.Sno=y.Sno);

select Sname, Sage from Student where Sage < ANY(select Sage from Student where Sdept='CS') and Sdept <> 'CS';
select Sname, Sage from Student where Sage < (select MAX(Sage) from Student where Sdept='CS') and Sdept <> 'CS';

select Sname, Sage from Student where Sage < ALL(select Sage from Student where Sdept='CS') and Sdept <> 'CS';
select Sname, Sage from Student where Sage < (select MIN(Sage) from Student where Sdept='CS') and Sdept <> 'CS';

SELECT Sname
from Student 
where exists
(select * from SC where Sno=Student.Sno and Cno='1');

SELECT Sname
from Student 
where not exists
(select * from SC where Sno=Student.Sno and Cno='1');

select * from Student S1 where exists(select * from Student S2 where S2.Sname='张三' and S1.Sdept=S2.Sdept)

select Sname from Student where NOT EXISTS
(select * FROM Course where not exists (
select * from SC where Sno = Student.Sno and Cno=(Course.Cno)
))