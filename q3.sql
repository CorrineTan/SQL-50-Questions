/* Question 3: 
Query student information with grades in the SC table. */

/* Solution: table.* will select every columns in table */

select student.* from student
inner join sc
on sc.sid=student.sid