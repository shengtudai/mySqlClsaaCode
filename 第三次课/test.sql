-- û��ѡ��ѧ��ѧ��ѧ��
select Sno from Student
except 
select Sno
from Course, SC
where Course.Cno= SC.Cno and Cname='��ѧ';
select Sno from Student
where Sno not in
(select Sno
from Course, SC
where Course.Cno= SC.Cno and Cname='��ѧ');


-- ��ѯѡ���˿γ̵�ѧ��ѧ��
select distinct Sno
from SC;

--����1�ſγ̵�ѧ����ƽ���ɼ�����߷ֺ���ͷ�
select avg(Grade), max(Grade), min(Grade)
from SC
where Cno = 1;

-- ��ѯ��ѧϵ����Ϣϵ��ѧ������Ϣ
select *
from Student
where Sdept='��ѧϵ' or Sdept='��Ϣϵ';

--������Ϊ19��ĵ�ѧ���ĳɼ���0
update SC
Set Grade =0 
where Sno in 
(Select Sno from Student where Sage =19);

--��ѯ����ѡ����1�ſγ̵�ѧ������
select Sname
from Student, SC
where Student.Sno=SC.Sno
and Cno = 1;
select From Student where Sno in(
select Sno from sc where Cno =1);

--��ÿһ���Ա���ѧ����ƽ�����䣬���ѽ���������ݿ�, �ȴ������ٲ�������
drop table sexAge
create table sexAge(
sex char(4),
age smallint
);
insert into sexAge 
select Ssex, Avg(Sage)
from student
group by Ssex;

--��ѯÿ��ѧ����õ�ѧ��
select Sno,sum(convert(smallint,Ccredit))
from SC, Course
where SC.Cno=Course.Cno and Grade >=60 group by Sno

--������Ů���ļ�¼����Ϊһ����ͼ
create view female 
as 
select * from Student where Sage='Ů';

--��ѯû��ѡ��1�ſγ̵�ѧ������

select Sname from Student 
except
select Sname
from student, SC
where student.Sno = SC.Sno and SC.Cno=1;

-- ������ѡ�������ݿ�γ̵�ѧ���ĳɼ���5��
update SC set Grade = Grade+5 where Cno in (select Cno from Course where Cname='���ݿ�'); 
--��ѯ��ϵ����Ů��ѧ������������ϵ�������У�Ů������ǰ
select Sdept,Ssex, count(*) ����  from Student group by Sdept, Ssex order by Sdept, Ssex DESC
