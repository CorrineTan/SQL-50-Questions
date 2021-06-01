/* Question 3: 
Query student information with grades in the SC table. */

/* Solution: table.* will select every columns in table. 
Put 'distinct' to limit to 1 row per student information. */

select distinct student.* from student
inner join sc
on sc.sid=student.sid
