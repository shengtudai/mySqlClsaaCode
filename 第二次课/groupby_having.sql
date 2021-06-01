-- 各个课程号及相应的选课人数
select  Cno, count(Sno) from SC group by Cno;

-- 查询平均成绩大于等于90分的学号和平均成绩
select Sno, AVG(Grade) from SC Group by Sno HAVING AVG(Grade)>=90;

--查询选修了两门课以上的学生学号
select Sno from SC group by Sno having count(*) >=2; 

--
select Sno, COUNT(*) from SC where Grade>=90 Group by Sno having Count(*)>=1;
--
select Sage, count(*) 人数 from Student where Ssex='男' group by Sage having count(*)>0 order by 人数,Sage DESC;