// ����index�Ǽӿ�����ٶȵ���Ч�ֶ�
create unique index Stusno on student(Sno);
create unique index Coucno on course(Cno);
create unique index SCno on SC(Sno ASC, Cno DESC);

