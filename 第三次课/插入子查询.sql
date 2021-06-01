use student
create table Deptage(Sdept CHAR(15), Average SMALLINT);

INSERT INTO Deptage 
select Sdept, Avg(Sage) from student group by Sdept;

-- update SC, student set SC.Grade=0 where SC.Sno=student.Sno and student.Sdept='CS'; 

update SC set SC.grade =0 
where Sno in (select Sno from student where Sdept='CS');
select * from SC;

update SC set SC.grade =1
where 'CS'= (select Sdept from student where SC.Sno=student.Sno);

delete from SC where Sno in (select Sno from student where Sdept='CS');
delete from SC where 'CS'=(select Sdept from student where SC.Sno=student.Sno);
select * from SC;

select Sno from SC where Grade< 60 and SC.Cno='1';
update SC set grade=null where Cno = 1;
select Sno from SC where Grade< 60 and SC.Cno='1' union select Sno from SC where Grade is null and SC.Cno='1';
select Sno from SC where (Grade< 60 or Grade is null) and SC.Cno='1';

