USE `capstone`;
ALTER TABLE foodallergy
MODIFY COLUMN age_end_years VARCHAR(50);
UPDATE `foodallergy`
SET age_end_years = CONCAT(FLOOR(AGE_END_YEARS), ' yrs and ', ROUND((AGE_END_YEARS - FLOOR(AGE_END_YEARS)) * 12), ' months') Where age_end_years > 0; 
