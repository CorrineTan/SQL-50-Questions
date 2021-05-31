/* Question 7: 
Query the information of students who have not studied all courses */

/* Solution: student left join with sc, then compare counts
of grouped student's cid and the length of course table. */

select * from student
where sid in (
select student.sid from student
left join sc 
on student.sid = sc.sid
group by student.sid
having count(sc.cid) < (select count(*) from course)
)