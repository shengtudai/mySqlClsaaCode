-- ��Ȼ����
select * from Student, SC;
select * from Student, SC where Student.Sno=SC.Sno;
select Student.*, Cno, Grade from Student, SC where Student.Sno=SC.Sno;

--��������
select first.Cno, second.Cpno 
from Course first, Course second 
where first.Cpno=second.Cno 
	and second.Cpno is not null;
	
select S1.* 
from Student S1, Student S2 
where S2.Sname='����' 
	and S1.Sdept=S2.Sdept;
--	
select *  
from Student, SC 
where Student.Sno=SC.Sno and SC.Grade>=90 and SC.Cno=2;
 
--ѡ��1�ſγ̵�ѧ������
select Sname from Student,SC where Student.Sno=SC.Sno and Cno='1';
	
select Student.Sno ,Sname, Cname, Grade from Student, SC, Course where Student.Sno=SC.Sno and SC.Cno=Course.Cno;
