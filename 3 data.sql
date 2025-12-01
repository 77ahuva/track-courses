delete Enrollment

insert Enrollment(StudentFirstName, StudentLastName, StudentEmail, EnrollmentDate, EnrollmentStatus, CourseName, CourseStartDate, FinalGrade)
select 'Chaya Sara', 'Ackerman', 'cheesara@gmail.com', '1-7-2025', 'completed', 'Hair by Simi', '1-11-2025', 99
union select 'Chayala', 'Ausch', 'chayala2007@gmail.com', '2-14-2024', 'completed', 'Nutrition by Tanya', '3-25-2025', 100
union select 'Shifra', 'Bistritzky', 'shifrabistritzky@gmail.com', '11-27-2025', 'enrolled', 'Quickbooks', '1-2-2026', null
union select 'Faigy', 'Reiss', 'faigyr@icloud.com', '10-17-2025', 'enrolled', 'Makeup by Temmy', '12-27-2025', null
union select 'Faigy', 'Meyer', 'faigym@gmail.com', '4-11-2025', 'dropped', 'Speech Therapy', '12-19-2025', null
union select 'Shira', 'Levinson', 'levinsoncrewat1002@gmail.com', '11-11-2025', 'enrolled', 'Makeup by Temmy', '12-27-2025', null
union select 'Libby', 'Freund', 'libbyrox@gmail.com', '9-14-2025', 'enrolled', 'Makeup by Temmy', '12-27-2025', null
union select 'Devora', 'Szanto', 'desantis@gmail.com', '2-10-2025', 'dropped', 'Acting', '2-20-2025', null
union select 'Miriam', 'Katz', 'sketchmk@gmail.com', '3-14-2025', 'completed', 'Teaching for Dummies', '4-25-2025', 100
union select 'Suri', 'Klein', 'surik@gmail.com', '2-17-2024', 'completed', 'Nutrition by Tanya', '3-25-2025', 97
union select 'Chana', 'Stern', 'chanatyh@gmail.com', '4-12-2025', 'completed', 'Speech Therapy', '12-19-2025', 87
union select 'Miriam', 'Heisler', 'heislerfam@gmail.com', '11-29-2025', 'enrolled', 'Quickbooks', '1-2-2026', null
union select 'Hadassah', 'Brand', 'hbrand@gmail.com', '3-29-2025', 'completed', 'Teaching for Dummies', '4-25-2025', 95
union select 'Blimi', 'Rosenberg', 'blimivideo@gmail.com', '2-12-2025', 'completed', 'Acting', '2-20-2025', 100

select * from enrollment e
