SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, assistance_requests.completed_at - assistance_requests.started_at AS duration
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
JOIN students ON assistance_requests.student_id = students.id
ORDER BY assistance_requests.completed_at - assistance_requests.started_at;