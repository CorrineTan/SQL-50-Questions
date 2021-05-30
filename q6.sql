/* Question 6: 
Query the information of the students who have studied from the teacher "张三" */

/* Solution: inner join on all the tables */

select * from student
inner join sc 
on student.sid = sc.sid
inner join course
on course.cid = sc.cid
inner join teacher
on teacher.tid = course.tid
where tname = '张三'