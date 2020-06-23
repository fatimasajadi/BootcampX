SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING COUNT(assignments.duration)>=10
ORDER BY day;