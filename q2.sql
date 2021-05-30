/* Question 2: 
Query the student number and student name and average grade of students 
with an average score greater than or equal to 60 points*/

/* Solution: SC table do a self-join(table a and b) first on sid to 
get each student's cid in a same line, then filter table a(left side) 
and table b(right side). Last do a outer 'in' query to get student info. */

select student.sid, student.sname, avg(sc.score) as avg_score from student 
inner join sc
on sc.sid=student.sid
group by student.sid, student.sname
having avg_score >= 60