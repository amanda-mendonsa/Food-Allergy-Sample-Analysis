Use capstone;
SELECT Subject_ID, COUNT(*) as count FROM `foodallergy`
GROUP BY Subject_ID
HAVING COUNT(*) > 1;

-- Use to find duplicate data
