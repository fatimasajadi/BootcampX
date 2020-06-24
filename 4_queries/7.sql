SELECT  AVG(created_at-started_at) as average_wait_time  
FROM assistance_requests
ORDER BY average_wait_time;