-- �����γ̺ż���Ӧ��ѡ������
select  Cno, count(Sno) from SC group by Cno;

-- ��ѯƽ���ɼ����ڵ���90�ֵ�ѧ�ź�ƽ���ɼ�
select Sno, AVG(Grade) from SC Group by Sno HAVING AVG(Grade)>=90;

--��ѯѡ�������ſ����ϵ�ѧ��ѧ��
select Sno from SC group by Sno having count(*) >=2; 

--
select Sno, COUNT(*) from SC where Grade>=90 Group by Sno having Count(*)>=1;
--
select Sage, count(*) ���� from Student where Ssex='��' group by Sage having count(*)>0 order by ����,Sage DESC;