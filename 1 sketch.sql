/* EnrollmentId 

StudentFirstName
not null, not blank 

StudentLastName
not null, not blank

StudentEmail
not null, not blank

CourseName
not null, not blank

CourseStartDate
date, not null

EnrollmentDate
date, not null

EnrollmentStatus
status must be either Enrolled, Completed, Dropped.

FinalGrade
tiny int, null, between 0 and 100

constraints:
enrollment date cant be after course start date.
status and grade must both have a value or both be null.
student email and course name have to be unique
If Status is Completed, Grade must be present; otherwise, it must be null.



*/
