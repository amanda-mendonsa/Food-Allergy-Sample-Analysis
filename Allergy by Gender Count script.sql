SELECT 
    GENDER_FACTOR,
    SUM(CASE WHEN SHELLFISH_ALG_START > 0 THEN 1 ELSE 0 END) AS shellfish_allergy_count,
    SUM(CASE WHEN FISH_ALG_START > 0 THEN 1 ELSE 0 END) AS fish_allergy_count,
    SUM(CASE WHEN MILK_ALG_START > 0 THEN 1 ELSE 0 END) AS milk_allergy_count,
    SUM(CASE WHEN SOY_ALG_START > 0 THEN 1 ELSE 0 END) AS soy_allergy_count,
    SUM(CASE WHEN EGG_ALG_START > 0 THEN 1 ELSE 0 END) AS egg_allergy_count,
    SUM(CASE WHEN WHEAT_ALG_START > 0 THEN 1 ELSE 0 END) AS wheat_allergy_count,
    SUM(CASE WHEN PEANUT_ALG_START > 0 THEN 1 ELSE 0 END) AS peanut_allergy_count,
    SUM(CASE WHEN SESAME_ALG_START > 0 THEN 1 ELSE 0 END) AS sesame_allergy_count,
    SUM(CASE WHEN TREENUT_ALG_START > 0 THEN 1 ELSE 0 END) AS treenut_allergy_count,
    SUM(CASE WHEN WALNUT_ALG_START > 0 THEN 1 ELSE 0 END) AS walnut_allergy_count,
    SUM(CASE WHEN PECAN_ALG_START > 0 THEN 1 ELSE 0 END) AS pecan_allergy_count,
    SUM(CASE WHEN PISTACH_ALG_START > 0 THEN 1 ELSE 0 END) AS pistachio_allergy_count,
    SUM(CASE WHEN ALMOND_ALG_START > 0 THEN 1 ELSE 0 END) AS almond_allergy_count,
    SUM(CASE WHEN BRAZIL_ALG_START > 0 THEN 1 ELSE 0 END) AS brazil_nut_allergy_count,
    SUM(CASE WHEN HAZELNUT_ALG_START > 0 THEN 1 ELSE 0 END) AS hazelnut_allergy_count,
    SUM(CASE WHEN CASHEW_ALG_START > 0 THEN 1 ELSE 0 END) AS cashew_allergy_count
FROM 
    foodallergy
GROUP BY 
    GENDER_FACTOR;
