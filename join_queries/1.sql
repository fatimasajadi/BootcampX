SELECT students.name as student_name FROM students LEFT JOIN cohorts ON cohorts.id = students.cohort_id 
WHERE students.start_date <> cohorts.start_date ORDER BY cohorts.start_date;