/* Question 5: 
Query the number of teachers surnamed "李" */

/* Solution: like 'a%' indicates beginning with a */

select count(tid) as count from teacher
where tname like '李%'