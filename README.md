# SQL-50-Questions
This repo records the 50 significant SQL questions. Good to get familiar with basic SQL operations. I practice them all in Snowflake. :bowtie:

## Introduction to Four Tables Used

1.Student Table
Student(SId,Sname,Sage,Ssex)
```SQL
create table Student(SId varchar(10),Sname varchar(10),Sage datetime,Ssex varchar(10));
insert into Student values('01' , '赵雷' , '1990-01-01' , '男');
insert into Student values('02' , '钱电' , '1990-12-21' , '男');
insert into Student values('03' , '孙风' , '1990-12-20' , '男');
insert into Student values('04' , '李云' , '1990-12-06' , '男');
insert into Student values('05' , '周梅' , '1991-12-01' , '女');
insert into Student values('06' , '吴兰' , '1992-01-01' , '女');
insert into Student values('07' , '郑竹' , '1989-01-01' , '女');
insert into Student values('09' , '张三' , '2017-12-20' , '女');
insert into Student values('10' , '李四' , '2017-12-25' , '女');
insert into Student values('11' , '李四' , '2012-06-06' , '女');
insert into Student values('12' , '赵六' , '2013-06-13' , '女');
insert into Student values('13' , '孙七' , '2014-06-01' , '女');
```
2. Course Table 
Course(CId,Cname,TId)
```SQL
create table Course(CId varchar(10),Cname nvarchar(10),TId varchar(10));
insert into Course values('01' , '语文' , '02');
insert into Course values('02' , '数学' , '01');
insert into Course values('03' , '英语' , '03');
```
3.Teacher Table
Teacher(TId,Tname)
```SQL
create table Teacher(TId varchar(10),Tname varchar(10));
insert into Teacher values('01' , '张三');
insert into Teacher values('02' , '李四');
insert into Teacher values('03' , '王五');
```
4.Score Table
SC(SId,CId,score)
```SQL
create table SC(SId varchar(10),CId varchar(10),score decimal(18,1));
insert into SC values('01' , '01' , 80);
insert into SC values('01' , '02' , 90);
insert into SC values('01' , '03' , 99);
insert into SC values('02' , '01' , 70);
insert into SC values('02' , '02' , 60);
insert into SC values('02' , '03' , 80);
insert into SC values('03' , '01' , 80);
insert into SC values('03' , '02' , 80);
insert into SC values('03' , '03' , 80);
insert into SC values('04' , '01' , 50);
insert into SC values('04' , '02' , 30);
insert into SC values('04' , '03' , 20);
insert into SC values('05' , '01' , 76);
insert into SC values('05' , '02' , 87);
insert into SC values('06' , '01' , 31);
insert into SC values('06' , '03' , 34);
insert into SC values('07' , '02' , 89);
insert into SC values('07' , '03' , 98);
```

## Questions
1. Query information and course scores of students with higher grades in the "01" course than in the "02" course
- Query the situation that "01" course and "02" course exist at the same time
- Query the situation where the "01" course exists but the "02" course may not exist (it will be displayed as null if it does not exist)
- Query the situation where there is no "01" course but "02" course
2. Query the student number and student name and average grade of students with an average score greater than or equal to 60 points
3. Query student information with grades in the SC table
4. Query the student number, student name, total number of selected courses, and total score of all courses of all students (no score will be displayed as null)
5. Query the number of teachers surnamed "李"
6. Query the information of the students who have studied from the teacher "张三" 
7. Query the information of students who have not studied all courses
8. Query the information of at least one class that is the same as the student whose student ID is "01"
9. Query the information of other students that are exactly the same as the courses taken by the students with number "01"
10. Query the names of students who have not studied any course taught by teacher "张三"
11. Query the student ID, name and average grade of students who failed two or more courses
12. Retrieve the information of students whose scores of "01" are less than 60, sorted in descending order of scores
13. Display the grades and average grades of all the courses of all students in descending order of grade point average
14. Query the highest score, lowest score and average score of each subject:  
Displayed in the following format: course ID, course name, highest score, lowest score, average score, pass rate, medium rate, excellent rate 
Passing is >=60, excellent is: 80-90
It is required to output the course number and the number of electives, and the query results are sorted in descending order by the number of people. If the number of people is the same, they are sorted in ascending order by the number of courses.
15. Sort according to the scores of each subject and display the ranking. If the score is repeated, the ranking will be kept vacant
- Sort according to the scores of each subject, and display the rankings. When the scores are repeated, the rankings are combined
16. Query the student's total score and rank it. If the total score is repeated, the ranking will remain vacant
- Query the total scores of students and rank them. When the total scores are repeated, the ranking will not be reserved
17. Count the number of students in each grade of each subject: course number, course name, [100-85], [85-70], [70-60], [60-0] and percentage
18. Query the top three records of each subject
19. Query the number of students selected for each course
20. Find out the student ID and name of the students who only take two courses
21. Query the number of boys and girls
22. Query student information with the word "风" in the name
23. Query the list of same-sex students with the same name and count the number of people with the same name
24. Query the list of students born in 1990
25. Query the average score of each course, and the results are sorted in descending order of the average score. When the average score is the same, they are sorted in ascending order by the course number
26. Query the student ID, name and average grade of all students whose average score is greater than or equal to 85
27. Query the names and scores of students whose course name is "Mathematics" and whose scores are lower than 60
28. Query the courses and scores of all students (there are cases where students have no grades and no courses)
29. Query the name, course name and score of any course with a score of 70 or more
30. Check failed courses
31. Query the student ID and name of students whose course number is 01 and whose course score is above 80
32. Find the number of students in each course
33. The grades are not repeated, query the information of the students with the highest grades and their grades among the students who took the courses taught by teacher "张三"
34. In the case of duplicate scores, query the information of the student with the highest score and its score among the students who took the course taught by teacher "张三"
35. Query the student number, course number, and student results of students with the same grades in different courses
36. Query the top two with the best scores in each class
37. Count the number of students elective for each course (only count for courses with more than 5 students).
38. Retrieve student IDs of students who have taken at least two courses
39. Query information about students who have taken all courses
40. Query the age of each student, only by year
41. Calculated according to the date of birth, if the current month and day <the month and day of the birth year, the age is reduced by one
42. Query students who have a birthday this week
43. Query students who will have their birthday next week
44. Query students who have a birthday this month
45. Query students who will have their birthdays next month 
