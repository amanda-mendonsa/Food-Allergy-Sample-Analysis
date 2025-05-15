SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Shellfish Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE SHELLFISH_ALG_START or SHELLFISH_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Fish Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE fish_alg_start or fish_alg_end > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Milk Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE MILK_ALG_START or MILK_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Soy Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE SOY_ALG_START or SOY_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Egg Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE EGG_ALG_START or EGG_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Wheat Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE WHEAT_ALG_START or WHEAT_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Peanut Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE PEANUT_ALG_START or PEANUT_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Sesame Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE SESAME_ALG_START or SESAME_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Treenut Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE TREENUT_ALG_START or TREENUT_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Walnut Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE WALNUT_ALG_START or WALNUT_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Pecan Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE PECAN_ALG_START or PECAN_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Pistachio Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE PISTACH_ALG_START or PISTACH_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Almond Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE ALMOND_ALG_START or ALMOND_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Brazil Nut Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE BRAZIL_ALG_START or BRAZIL_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Hazelnut Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE HAZELNUT_ALG_START or HAZELNUT_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Cashew Allergy' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE CASHEW_ALG_START or CASHEW_ALG_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Atopic Dermatitis' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE ATOPIC_DERM_START or ATOPIC_DERM_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Allergic Rhinitis' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE ALLERGIC_RHINITIS_START or ALLERGIC_RHINITIS_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR

UNION ALL

SELECT 
    ethnicity_factor, RACE_FACTOR,
    'Asthma' AS allergy_type,
    COUNT(*) AS count_in_group,
    ROUND((COUNT(*) * 100.0) / (SELECT COUNT(DISTINCT subject_id) FROM `foodallergy`), 2) AS percent_of_population
FROM `foodallergy`
WHERE ASTHMA_START or ASTHMA_END > 0
GROUP BY ethnicity_factor, RACE_FACTOR
ORDER BY RACE_FACTOR, allergy_type;

