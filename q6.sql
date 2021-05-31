/* Question 6: 
Query the information of students who have not studied all courses */

/* Solution: inner join on all the tables */

select * from student
inner join sc 
on student.sid = sc.sid
inner join course
on course.cid = sc.cid
inner join teacher
on teacher.tid = course.tid
where tname = '张三'