-- Script counts number of patients with each allergy or condition
USE capstone;
SELECT 'shellfish' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE SHELLFISH_ALG_START or SHELLFISH_ALG_END> 0

UNION ALL

SELECT 'fish' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE FISH_ALG_START or FISH_ALG_END> 0

UNION ALL

SELECT 'milk' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE MILK_ALG_START or MILK_ALG_END> 0

UNION ALL

SELECT 'soy' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE SOY_ALG_START or SOY_ALG_END> 0

UNION ALL

SELECT 'egg' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE EGG_ALG_START or EGG_ALG_END> 0

UNION ALL

SELECT 'wheat' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE WHEAT_ALG_START or WHEAT_ALG_END> 0

UNION ALL

SELECT 'peanut' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE PEANUT_ALG_START or PEANUT_ALG_END> 0

UNION ALL

SELECT 'sesame' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE SESAME_ALG_START or SESAME_ALG_END> 0

UNION ALL

SELECT 'treenut' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE TREENUT_ALG_START or TREENUT_ALG_END> 0

UNION ALL

SELECT 'walnut' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE WALNUT_ALG_START or WALNUT_ALG_END> 0

UNION ALL

SELECT 'pecan' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE PECAN_ALG_START or PECAN_ALG_END> 0

UNION ALL

SELECT 'pistachio' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE PISTACH_ALG_START or PISTACH_ALG_END> 0

UNION ALL

SELECT 'almond' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE ALMOND_ALG_START or ALMOND_ALG_END> 0

UNION ALL

SELECT 'brazil nut' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE BRAZIL_ALG_START or BRAZIL_ALG_END> 0

UNION ALL

SELECT 'hazelnut' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE HAZELNUT_ALG_START or HAZELNUT_ALG_END> 0

UNION ALL

SELECT 'cashew' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE CASHEW_ALG_START or CASHEW_ALG_END> 0

UNION ALL

SELECT 'atopic dermatitis' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE ATOPIC_DERM_START or ATOPIC_DERM_END> 0

UNION ALL

SELECT 'allergic rhinitis' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE ALLERGIC_RHINITIS_START or ALLERGIC_RHINITIS_END> 0

UNION ALL

SELECT 'asthma' AS allergy_name, COUNT(*) AS number_of_patients
FROM `foodallergy`
WHERE ASTHMA_START or ASTHMA_END> 0;

