/* Question 9: 
Query the information of other students that are exactly 
the same as the courses taken by the students with number "01" */

/* Solution: question8 plus count checking.
Remeber not including the student 01. */

select distinct student.sid, sname, sage, ssex
from student
inner join sc
on sc.sid = student.sid
where cid in (
select cid
from sc
where sid = 01
)
group by student.sid, sname, sage, ssex
having count(cid) = (select count(cid) from sc where sid = 01)
and student.sid != 01