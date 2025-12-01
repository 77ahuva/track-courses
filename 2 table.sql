use CourseDB
go
drop table if exists Enrollment
go
create table dbo.Enrollment(
EnrollmentId int not null identity primary key,
StudentFirstName varchar(50) not null
	constraint c_Student_First_Name_cannot_be_blank check (StudentFirstName <> ''),
StudentLastName varchar(35) not null
	constraint c_Student_Last_Name_cannot_be_blank check (StudentLastName <> ''),
StudentEmail varchar (50) not null
	constraint c_Student_Email_cannot_be_blank check (StudentEmail <> ''),
EnrollmentDate date not null,
EnrollmentStatus varchar(9) 
	constraint c_Enrollment_Status_must_be_enrolled_completed_or_dropped check (EnrollmentStatus in ('enrolled', 'completed', 'dropped')),
CourseName varchar(100) not null
	constraint c_Course_Name_cannot_be_blank check (CourseName <> ''),
CourseStartDate date not null,
FinalGrade tinyint null 
	constraint c_Final_Grade_must_be_between_0_and_100 check (FinalGrade between 0 and 100),
constraint c_Enrollment_Date_cannot_be_after_Course_Start_Date check (EnrollmentDate <= CourseStartDate),
constraint u_StudentEmail_CourseName unique (StudentEmail, CourseName),
constraint c_Final_Grade_must_be_present_when_Enrollment_Status_is_completed 
	check ((EnrollmentStatus = 'completed' and FinalGrade is not null) or (EnrollmentStatus <> 'completed' and FinalGrade is null))
)
