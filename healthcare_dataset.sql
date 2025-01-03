SELECT *
FROM sakila.`healthcare_dataset.csv`;


#Most common diagnosis across patient 
SELECT `Medical Condition`, 
	COUNT(*) AS Number_of_Diagnosis
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`
Order By Number_of_Diagnosis DESC;


#1 Age group affected with each medical condition
SELECT `Medical Condition`, 
	`Age Group`,
    COUNT(*) AS count_of_age_group
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`,
	`Age Group`
ORDER BY `Medical Condition`,
	`Age Group`;
    
    

#2 Gender demographic associated with each health condition
SELECT `Medical Condition`, 
    SUM(CASE WHEN Gender = "Male" THEN 1 ELSE 0 END) AS  Male_count,
    SUM(CASE WHEN Gender = "Female" THEN 1 ELSE 0 END) AS Female_count
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`
ORDER BY `Medical condition`;


#3 How does patient admission type vary across medical conditions
SELECT `Medical Condition`,
    `Admission Type`,
    Count(*) AS Patient_count
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`,
	`Admission Type`
ORDER BY `Admission Type`,
	`Medical Condition`;


#4 Patterns of heathcare services across different medications
SELECT `Medical Condition`,
    Medication,
    AVG(`Billing Amount`) AS Avg_billing_amount,
    COUNT(*) AS Medication_count
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`,
	Medication
ORDER BY `Medical Condition`,
	Medication;


    


