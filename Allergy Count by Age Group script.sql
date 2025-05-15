Use capstone;
SELECT 
    CASE 
        WHEN age_start_years BETWEEN 0 AND 4 THEN '0-4'
        WHEN age_start_years BETWEEN 5 AND 8 THEN '5-8'
        WHEN age_start_years BETWEEN 9 AND 13 THEN '9-13'
        WHEN age_start_years BETWEEN 14 AND 19 THEN '14-19'
        ELSE 'Other'
    END AS age_group,
    SUM(CASE WHEN (SHELLFISH_ALG_START > 0 ) THEN 1 ELSE 0 END) AS shellfish_count,
    SUM(CASE WHEN (FISH_ALG_START > 0 ) THEN 1 ELSE 0 END) AS fish_count,
    SUM(CASE WHEN (MILK_ALG_START > 0 ) THEN 1 ELSE 0 END) AS milk_count,
    SUM(CASE WHEN (SOY_ALG_START > 0 ) THEN 1 ELSE 0 END) AS soy_count,
    SUM(CASE WHEN (EGG_ALG_START > 0 ) THEN 1 ELSE 0 END) AS egg_count,
    SUM(CASE WHEN (WHEAT_ALG_START > 0 ) THEN 1 ELSE 0 END) AS wheat_count,
    SUM(CASE WHEN (PEANUT_ALG_START > 0 ) THEN 1 ELSE 0 END) AS peanut_count,
    SUM(CASE WHEN (SESAME_ALG_START > 0 ) THEN 1 ELSE 0 END) AS sesame_count,
    SUM(CASE WHEN (TREENUT_ALG_START > 0 ) THEN 1 ELSE 0 END) AS treenut_count,
    SUM(CASE WHEN (WALNUT_ALG_START > 0 ) THEN 1 ELSE 0 END) AS walnut_count,
    SUM(CASE WHEN (PECAN_ALG_START > 0 ) THEN 1 ELSE 0 END) AS pecan_count,
    SUM(CASE WHEN (PISTACH_ALG_START > 0 ) THEN 1 ELSE 0 END) AS pistachio_count,
    SUM(CASE WHEN (ALMOND_ALG_START > 0 ) THEN 1 ELSE 0 END) AS almond_count,
    SUM(CASE WHEN (BRAZIL_ALG_START > 0 ) THEN 1 ELSE 0 END) AS brazil_nut_count,
    SUM(CASE WHEN (HAZELNUT_ALG_START > 0 ) THEN 1 ELSE 0 END) AS hazelnut_count,
    SUM(CASE WHEN (CASHEW_ALG_START > 0 ) THEN 1 ELSE 0 END) AS cashew_count,
    SUM(CASE WHEN (ATOPIC_DERM_START > 0 ) THEN 1 ELSE 0 END) AS atopic_dermatitis_count,
    SUM(CASE WHEN (ALLERGIC_RHINITIS_START > 0 ) THEN 1 ELSE 0 END) AS allergic_rhinitis_count,
    SUM(CASE WHEN (ASTHMA_START or ASTHMA_END > 0 ) THEN 1 ELSE 0 END) AS asthma_count,
    SUM(
        CASE 
            WHEN (SHELLFISH_ALG_START > 0 ) THEN 1 ELSE 0
        END +
        CASE 
            WHEN (FISH_ALG_START > 0 ) THEN 1 ELSE 0
        END +
        CASE 
            WHEN (MILK_ALG_START > 0) THEN 1 ELSE 0
        END +
        CASE 
            WHEN (SOY_ALG_START > 0) THEN 1 ELSE 0
        END
    ) AS total_allergies_count

FROM `foodallergy`
GROUP BY age_group
ORDER BY 
    CASE 
        WHEN age_group = '0-4' THEN 1
        WHEN age_group = '5-8' THEN 2
        WHEN age_group = '9-13' THEN 3
        WHEN age_group = '14-19' THEN 4
        ELSE 5
    END ASC;

