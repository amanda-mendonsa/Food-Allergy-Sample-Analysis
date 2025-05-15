SET SQL_SAFE_UPDATES = 0;
ALTER TABLE foodallergy
MODIFY COLUMN age_start_years VARCHAR(50);
UPDATE `foodallergy`
SET age_start_years = CONCAT(FLOOR(AGE_START_YEARS), ' yrs and ', ROUND((AGE_START_YEARS - FLOOR(AGE_START_YEARS)) * 12), ' months') Where age_start_years > 0; 

