/* Question 13: 
Display the grades and average grades of all the courses 
f all students in descending order of grade point average */

/* Solution: create a sub table to get required conditions. */

select sc.*, ave_score
from (
select sid, avg(score) as ave_score
from sc
group by sid
) as sub_table
join sc
on sc.sid = sub_table.sid
order by ave_score desc