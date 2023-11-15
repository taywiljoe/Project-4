CREATE TABLE "diabetes" (
	"gender" VARCHAR(100) NOT NULL,
	"age" FLOAT NOT NULL,
	"hypertension" VARCHAR(50) NOT NULL,
	"heart_disease" VARCHAR(50) NOT NULL,
	"smoking_history" VARCHAR(100) NOT NULL,
	"bmi" FLOAT NOT NULL,
	"HbA1c_level" FLOAT NOT NULL,
	"blood_glucose_level" FLOAT NOT NULL, 
	"diabetes" VARCHAR(50)
);

SELECT * FROM diabetes;

--COUNT OF PEOPLE WHO ANSWERED YES TO HAVING DIABETES WITHIN OUR DATASET
SELECT COUNT(diabetes) AS "Count of People with Diabetes"
FROM "diabetes"
WHERE "diabetes" = 'yes';

--COUNT OF TOTAL PEOPLE IN OUR DATASET
--only 8.5% of of our dataset has diabetes 
SELECT COUNT(diabetes) AS "Count of People in Our Dataset"
FROM "diabetes";
WHERE "diabetes" = 'yes';

--Based of Alan's Forests sorted by factor that increases chance of diabetes, 
--HbA1c_level, blood_glucose_level, age, and BMI had the highest cause of diabetes. 
--These values are percentages. 
--Note: Normal Range for people without diabetes = below 5.7%
--Note: People with prediabetes range from 5.7% to 6.4%
--Note: People with diabetes should aim for a level of below 5.7%
SELECT "HbA1c_level" 
FROM "diabetes" 
GROUP BY "HbA1c_level"
ORDER BY "HbA1c_level" DESC;

SELECT "blood_glucose_level" 
FROM "diabetes" 
GROUP BY "blood_glucose_level"
ORDER BY "blood_glucose_level" DESC;

--count of people with diabetes broken down by age group
SELECT "age", COUNT("diabetes") AS "diabetes_count"
FROM "diabetes"
WHERE "diabetes" = 'yes'
GROUP BY "age"
ORDER BY "age" DESC;