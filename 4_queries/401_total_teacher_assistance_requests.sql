SELECT COUNT(assistance_requests.teacher_id) AS total_assistances, teachers.name AS name
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
GROUP BY teachers.name
HAVING teachers.name = ‘Waylon Boehm’;