-- Version One
SELECT submission_date, COUNT(DISTINCT hacker_id) AS unique_hackers, MAX(score) 
    AS max_submissions FROM submissions GROUP BY submission_date ORDER BY submission_date;

-- Version 2 -- not working yet
SELECT submission_date, COUNT(DISTINCT hacker_id) AS unique_hackers, MAX(score) AS max_submissions FROM(
    SELECT submission_date, hacker_id, COUNT(submission_id ) AS submissions_per_hacker, MAX(CASE WHEN count(*) = max_submissions THEN hacker_id END) AS hacker_id_with_max_submissions, MAX(CASE WHEN count(*) =        max_submissions THEN hacker_name END) AS                        hacker_name_with_max_submissions
  FROM submissions
)
GROUP BY submission_date
ORDER BY submission_date;