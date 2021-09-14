SELECT cohorts.name AS "cohort_name", count(*) as "student_count"
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING count(*) >= 18
ORDER BY count(*);