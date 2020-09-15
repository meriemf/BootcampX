
SELECT cohorts.name as cohort_name, count(students.*) as students_count FROM cohorts JOIN students ON (cohorts.id=students.cohort_id)
GROUP BY cohorts.name
HAVING count(students.*) > 17
ORDER BY count(students.*); 