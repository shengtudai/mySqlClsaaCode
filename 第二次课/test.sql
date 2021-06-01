--查询全体学生的学号和姓名
select Sno, Sname from Student;

--查询选秀了课程名为数据库的学生学号和姓名
select S.Sno, S.Sname from Student S , SC, Course C where S.sno=SC.sno and SC.cno=C.cno and C.cname='数据库';
select Student.Sno, Student.Sname
from Course, student, SC
where student.Sno=SC.Sno and Course.Cno=Sc.Cno and Cname = '数据库原理';

--查询全体学生的姓名 出生年份 和所在系
select Sname 姓名, (2021-Sage) 出生年份, LOWER(Sdept) 所在系 from Student;

--查询有多少名学生的数据库课程成绩不及格
select count(*) from SC where Grade<=60 and Cno in (select Cno from Course where Cname='数据库');

select count(Sno)
from course, SC
where Course.Cno=Sc.Cno and Cname='数据库' and grade<60;
-- 查找所有姓李的学生的姓名，学好和性别 
select Sname, Sno, Sage from Student where Sname like '小%';