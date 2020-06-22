SELECT id, name, email,cohort_id,phone
FROM students WHERE email NOT LIKE '%@gmail.com' AND phone IS NULL;