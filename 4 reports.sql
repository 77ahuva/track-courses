/* 1. List all students currently enrolled for each Course.
Include Student Name, Email, Enrollment Date.*/
select e.StudentFirstName, e.StudentLastName, e.StudentEmail, e.EnrollmentDate, e.CourseName
from Enrollment e 
where EnrollmentStatus = 'enrolled'
order by CourseName

/* 2. Show all students who have completed a course (Status = Completed).
Include Course Name, Student Name, Grade, and Course Start Date.*/
select e.CourseName, e.StudentFirstName, e.StudentLastName, e.FinalGrade, e.CourseStartDate
from Enrollment e 
where EnrollmentStatus = 'completed'
order by e.CourseName

/* 3. Calculate the number of students who dropped a course (Status = Dropped) for each course.*/
select e.CourseName, NumberOfDropouts = count(*)
from Enrollment e 
where e.EnrollmentStatus = 'dropped'
group by e.CourseName

/* 4. Calculate the average final grade for each course where students have completed the course. */
select e.CourseName, AvgFinalGrade = avg(e.FinalGrade)
from Enrollment e 
where e.EnrollmentStatus = 'completed'
group by e.CourseName
order by AvgFinalGrade desc

/* 5. Show the count of enrollments per month or quarter based on Enrollment Date. */
select Month = month(e.EnrollmentDate), NumOfEnrollments = count(*)
from Enrollment e 
group by month(e.EnrollmentDate)
order by month(e.EnrollmentDate), NumOfEnrollments

/* 6. Identify students enrolled in more than one course.*/
select CoursesEnrolled = count(*), e.StudentFirstName, e.StudentLastName, e.StudentEmail
from Enrollment e 
group by e.StudentEmail, e.StudentFirstName, e.StudentLastName
having count(*) > 1

