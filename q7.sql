/* Question 7: 
Query the information of at least one class 
that is the same as the student whose student ID is "01" */

/* Solution: nothing specific. */

select distinct student.*
from sc 
inner join student
on sc.sid = student.sid
where cid in (
select cid
from sc
where sid = 01
)