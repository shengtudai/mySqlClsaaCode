// 索引index是加快查找速度的有效手段
create unique index Stusno on student(Sno);
create unique index Coucno on course(Cno);
create unique index SCno on SC(Sno ASC, Cno DESC);

