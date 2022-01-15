SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assignment_requests) AS total_assistances
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name = ‘JUL02’
ORDER BY teacher ASC;