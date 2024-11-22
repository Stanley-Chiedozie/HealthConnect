# HealthConnect
Analysis of a fictional health company called HealthConnect to analyze patient health data to discover trends, and  aid management in decision-making

[Uploading healtSELECT *
FROM sakila.`healthcare_dataset.csv`;


#Most common diagnosis across patient 
SELECT `Medical Condition`, 
	COUNT(*) AS Number_of_Diagnosis
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`
Order By Number_of_Diagnosis DESC;


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


#1 Age group affected with each medical condition
SELECT `Medical Condition`, 
	`Age Group`,
    COUNT(*) AS count_of_age_group
FROM sakila.`healthcare_dataset.csv`
GROUP BY `Medical Condition`,
	`Age Group`
ORDER BY `Medical Condition`,
	`Age Group`;
    


hcare_dataset.sql…]()


![healthConnecttt-2_page-0001](https://github.com/user-attachments/assets/545d8c90-369a-4792-a57d-915c09325f0e)
![healthConnecttt-3_page-0001](https://github.com/user-attachments/assets/082f7e85-5e15-41ff-9910-52a1b85e9de6)
