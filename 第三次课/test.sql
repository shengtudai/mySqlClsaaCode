-- 没有选数学的学生学好
select Sno from Student
except 
select Sno
from Course, SC
where Course.Cno= SC.Cno and Cname='数学';
select Sno from Student
where Sno not in
(select Sno
from Course, SC
where Course.Cno= SC.Cno and Cname='数学');


-- 查询选修了课程的学生学号
select distinct Sno
from SC;

--计算1号课程的学生的平均成绩，最高分和最低分
select avg(Grade), max(Grade), min(Grade)
from SC
where Cno = 1;

-- 查询数学系和信息系的学生的信息
select *
from Student
where Sdept='数学系' or Sdept='信息系';

--将年龄为19岁的的学生的成绩置0
update SC
Set Grade =0 
where Sno in 
(Select Sno from Student where Sage =19);

--查询所有选修了1号课程的学生姓名
select Sname
from Student, SC
where Student.Sno=SC.Sno
and Cno = 1;
select From Student where Sno in(
select Sno from sc where Cno =1);

--对每一个性别，求学生的平均年龄，并把结果存入数据库, 先创建表，再插入数据
drop table sexAge
create table sexAge(
sex char(4),
age smallint
);
insert into sexAge 
select Ssex, Avg(Sage)
from student
group by Ssex;

--查询每个学生获得的学分
select Sno,sum(convert(smallint,Ccredit))
from SC, Course
where SC.Cno=Course.Cno and Grade >=60 group by Sno

--将所有女生的记录定义为一个视图
create view female 
as 
select * from Student where Sage='女';

--查询没有选修1号课程的学生姓名

select Sname from Student 
except
select Sname
from student, SC
where student.Sno = SC.Sno and SC.Cno=1;

-- 将所有选修了数据库课程的学生的成绩加5分
update SC set Grade = Grade+5 where Cno in (select Cno from Course where Cname='数据库'); 
--查询各系的男女生学生总数，并按系升序排列，女生排在前
select Sdept,Ssex, count(*) 人数  from Student group by Sdept, Ssex order by Sdept, Ssex DESC
