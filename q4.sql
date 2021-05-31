/* Question 4: 
Query the student number, student name, total number of selected courses, 
and total score of all courses of all students (no score will be displayed as null) */

/* Solution: nothing specific. */

select student.sid, sname, sum(score) as sum_score, count(cid) as total_course from student 
left join sc
on sc.sid=student.sid
group by student.sid, student.sname