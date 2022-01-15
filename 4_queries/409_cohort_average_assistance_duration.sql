SELECT AVG(total_duration) as average_total_duration
FROM 
  (SELECT cohorts.name AS name, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
  FROM cohorts
  JOIN students ON cohorts.id = students.cohort_id
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name) MyTable;