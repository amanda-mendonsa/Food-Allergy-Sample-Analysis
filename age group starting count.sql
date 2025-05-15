SELECT 
    age_group_start,
    COUNT(*) AS count_in_group_start,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(*) FROM `foodallergy`), 2) AS percent_of_patientsample
FROM (
    SELECT 
        CASE
            WHEN age_start_years BETWEEN 0 AND 4 THEN '0-4'
            WHEN age_start_years BETWEEN 5 AND 8 THEN '5-8'
            WHEN age_start_years BETWEEN 9 AND 13 THEN '9-13'
            WHEN age_start_years BETWEEN 14 AND 19 THEN '14-19'
        END AS age_group_start
    FROM `foodallergy`
) AS age_groups_start
GROUP BY age_group_start
ORDER BY age_group_start;



