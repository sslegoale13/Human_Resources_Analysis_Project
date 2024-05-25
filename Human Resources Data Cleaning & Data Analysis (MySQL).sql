SET sql_safe_updates = 0;

SET sql_mode = "Traditional";

-- Human Resources Initial Data Analysis.

CREATE DATABASE human_resources;

-- Imported Human Resources data into MySQL using SQLAlchemy.

USE human_resources;

SELECT *
FROM employees;

-- 1. Removing Duplicates

WITH Duplicates_CTE AS 
(SELECT *,
ROW_NUMBER() OVER(PARTITION BY
	`employees`.`Attrition`,
    `employees`.`Business Travel`,
    `employees`.`CF_age band`,
    `employees`.`CF_attrition label`,
    `employees`.`Department`,
    `employees`.`Education Field`,
    `employees`.`emp no`,
    `employees`.`Employee Number`,
    `employees`.`Gender`,
    `employees`.`Job Role`,
    `employees`.`Marital Status`,
    `employees`.`Over Time`,
    `employees`.`Over18`,
    `employees`.`Training Times Last Year`,
    `employees`.`Age`,
    `employees`.`CF_current Employee`,
    `employees`.`Daily Rate`,
    `employees`.`Distance From Home`,
    `employees`.`Education`,
    `employees`.`Employee Count`,
    `employees`.`Environment Satisfaction`,
    `employees`.`Hourly Rate`,
    `employees`.`Job Involvement`,
    `employees`.`Job Level`,
    `employees`.`Job Satisfaction`,
    `employees`.`Monthly Income`,
    `employees`.`Monthly Rate`,
    `employees`.`Num Companies Worked`,
    `employees`.`Percent Salary Hike`,
    `employees`.`Performance Rating`,
    `employees`.`Relationship Satisfaction`,
    `employees`.`Standard Hours`,
    `employees`.`Stock Option Level`,
    `employees`.`Total Working Years`,
    `employees`.`Work Life Balance`,
    `employees`.`Years At Company`,
    `employees`.`Years In Current Role`,
    `employees`.`Years Since Last Promotion`,
    `employees`.`Years With Curr Manager`) AS "Row Number"
FROM `human_resources`.`employees`)
SELECT *
FROM Duplicates_CTE
WHERE `Row Number` > 1;

-- 2. Data Formatting & Standardisation


-- 3. Imputing null/blank values


-- 4. Removing unnecessary columns