/* Question 10: 
Query the names of students who have not studied 
any course taught by teacher "张三". */

/* Solution: question6's complementary set. */

select * 
from student 
where sid not in(
select student.sid 
from student
join sc on student.sid = sc.sid
join course on course.cid = sc.cid
join teacher on teacher.tid = course.tid
where teacher.tname = '张三'
)