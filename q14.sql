/* Question 14: 
Query the highest score, lowest score and average score of each subject:
Displayed in the following format: course ID, course name, highest score, 
lowest score, average score, pass rate, medium rate, excellent rate
Passing is >=60, excellent is: >=90
It is required to output the course number and the number of electives, 
and the query results are sorted in descending order by the number of people. 
If the number of people is the same, they are sorted in ascending order by 
the number of courses. */

/* Solution:  */

select sc.cid as course_ID, cname as course_name,
max(score) as highest_score, 
min(score) as lowest_score, 
avg(score) as average_score,
sum(case when score >= 60 then 1 else 0 end)/count(*) as pass_rate,
sum(case when score >= 90 then 1 else 0 end)/count(*) as excellent_rate
from sc
inner join course
on sc.cid = course.cid
group by sc.cid, cname