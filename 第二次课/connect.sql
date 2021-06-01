-- 自然连接
select * from Student, SC;
select * from Student, SC where Student.Sno=SC.Sno;
select Student.*, Cno, Grade from Student, SC where Student.Sno=SC.Sno;

--自身连接
select first.Cno, second.Cpno 
from Course first, Course second 
where first.Cpno=second.Cno 
	and second.Cpno is not null;
	
select S1.* 
from Student S1, Student S2 
where S2.Sname='张三' 
	and S1.Sdept=S2.Sdept;
--	
select *  
from Student, SC 
where Student.Sno=SC.Sno and SC.Grade>=90 and SC.Cno=2;
 
--选了1号课程的学生姓名
select Sname from Student,SC where Student.Sno=SC.Sno and Cno='1';
	
select Student.Sno ,Sname, Cname, Grade from Student, SC, Course where Student.Sno=SC.Sno and SC.Cno=Course.Cno;
