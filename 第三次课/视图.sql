/* ��ͼ����ָ�������������
1.�Ӳ�ѯselect������־ۼ���������ʽ������ָ����������
2.�������ʱ��ѡ������ͬ������Ϊ��ͼ�����Ի��ֶ�
3.��Ҫ�����µ�����
*/
create view cs_student as select Sno, Sname, Sage from student where Sdept='CS';
update student set Sage = 29 where Sno ='01';
create view BT_S(Sno, Sname, Sbirth)
as
select Sno, Sname, 2021-Sage
from Student;
select * from BT_S;

create view S_G(Sno, Gavg) as select Sno, AVG(Grade) from SC group by Sno;

create view CS_S1(Sno, Sname, Grade) as select Student.Sno, Sname, Grade from student, SC where Sdept='CS' and student.Sno=SC.Sno and SC.Cno='1'; 

create view CS_S2 as select Sno, Sname, Grade from CS_S1 where Grade>=90;

select Sno, Sage from cs_student where Sage<20;

select cs_student.Sno, Sname from cs_student, SC
where cs_student.Sno=SC.Sno and
SC.Cno='1';

select * from S_G where Gavg>=90;
/*
select Sno, AVG(Grade) from SC where avg(Grade)>=90 group by Sno;
*/
select * from cs_student;
update cs_student set Sname='����ϵͳ' where Sno='06';
select * from student;
insert into cs_student values('07', '����',20);

delete from cs_student where Sno = '07';

create view max_grade(Sno, maxG) as select Sno, max(Grade) from SC group by Sno;
select * from SC;
select Sno, Cno from SC A where Grade=(select MAX(Grade) from SC B where B.Sno=A.Sno);