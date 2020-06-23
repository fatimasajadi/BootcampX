SELECT cohorts.name, COUNT(assignment_submissions.assignment_id)
FROM cohorts
JOIN students ON cohorts.id=students.cohort_id
JOIN assignment_submissions ON students.id=assignment_submissions.student_id
GROUP BY cohorts.id
ORDER BY COUNT(assignment_submissions.assignment_id) DESC;
