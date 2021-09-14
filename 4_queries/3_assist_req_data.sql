SELECT teachers.name as "teacher", students.name as "student", assignments.name as "assignment", (completed_at - started_at) as "duration"
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON student_id = students.id
LEFT JOIN assignments ON assignment_id = assignments.id
ORDER BY (completed_at - started_at);