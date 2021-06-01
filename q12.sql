/* Question 12: 
Retrieve the information of students whose scores of class "01" 
are less than 60, sorted in descending order of scores */

/* Solution: create a sub table to get required conditions. */

select *
from (
select sid, score
from sc
where cid = 01 and score < 60
order by score desc
) sub_table
inner join student
on student.sid = sub_table.sid