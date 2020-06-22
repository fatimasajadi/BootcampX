SELECT id, name, email, cohort_id
FROM  students
WHERE COALESCE(github, '') = '' 
ORDER BY cohort_id;