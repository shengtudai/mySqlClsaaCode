grant select 
on table student
to u1;

grant all privileges
on table Student Course
to u2, u3;

grant select 
on table SC
to PUBLIC;

grant update(Sno), select
on table student
to u4;

revoke update(Sno)
on table student
from U4;




