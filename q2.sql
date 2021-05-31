/* Question 2: 
Query the student number and student name and average grade of students 
with an average score greater than or equal to 60 points*/

/* Solution: use 'having' with the condition, not 'where', when there is a groupby clause. */

select student.sid, student.sname, avg(sc.score) as avg_score from student 
inner join sc
on sc.sid=student.sid
group by student.sid, student.sname
having avg_score >= 60