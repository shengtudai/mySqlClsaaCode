select count(*) from SC where Cno in (select Cno from Course where Cnmae = 'Êý¾Ý¿â')

select Cno, count(*) num  from SC group by Cno; 
