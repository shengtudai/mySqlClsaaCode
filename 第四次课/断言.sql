select count(*) from SC where Cno in (select Cno from Course where Cnmae = '���ݿ�')

select Cno, count(*) num  from SC group by Cno; 
