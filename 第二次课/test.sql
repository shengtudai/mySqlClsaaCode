--��ѯȫ��ѧ����ѧ�ź�����
select Sno, Sname from Student;

--��ѯѡ���˿γ���Ϊ���ݿ��ѧ��ѧ�ź�����
select S.Sno, S.Sname from Student S , SC, Course C where S.sno=SC.sno and SC.cno=C.cno and C.cname='���ݿ�';
select Student.Sno, Student.Sname
from Course, student, SC
where student.Sno=SC.Sno and Course.Cno=Sc.Cno and Cname = '���ݿ�ԭ��';

--��ѯȫ��ѧ�������� ������� ������ϵ
select Sname ����, (2021-Sage) �������, LOWER(Sdept) ����ϵ from Student;

--��ѯ�ж�����ѧ�������ݿ�γ̳ɼ�������
select count(*) from SC where Grade<=60 and Cno in (select Cno from Course where Cname='���ݿ�');

select count(Sno)
from course, SC
where Course.Cno=Sc.Cno and Cname='���ݿ�' and grade<60;
-- �������������ѧ����������ѧ�ú��Ա� 
select Sname, Sno, Sage from Student where Sname like 'С%';