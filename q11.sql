/* Question 11: 
Query the student ID, name and average grade 
of students who failed two or more courses */

/* Solution: create a sub table to get required conditions. */

select student.sid, student.sname, ave_score
from (
select sid, avg(score) as ave_score
from sc
where score < 60
group by sid
having count(*) >= 2
) as sub_table
inner join student
on student.sid = sub_table.sid