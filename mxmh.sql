SELECT *
FROM PortfolioProject..mxmh_survey_results


--Converting the date and time format to Date
SELECT TimeStamp, CONVERT(date,TimeStamp)
FROM mxmh_survey_results
--WHERE TIMESTAMP IS NULL

SELECT TimeStamp
FROM mxmh_survey_results

ALTER TABLE mxmh_survey_results
ADD TimeStampUpdated date

Update mxmh_survey_results
SET TimeStampUpdated = CONVERT(date,TimeStamp)

SELECT TimeStampUpdated
FROM mxmh_survey_results

Alter table PortfolioProject..mxmh_survey_results
Drop column TimeStamp

-- Grouping the Levels of Anxiety, Depression, Insomnia and OCD
Select Anxiety,
CASE
	WHEN Anxiety <=4 THEN 'Low'
	WHEN Anxiety BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Anxiety >=8 THEN 'High'
	ELSE 'NULL'
END
From PortfolioProject..mxmh_survey_results

Select Depression,
CASE
	WHEN Depression <=4 THEN 'Low'
	WHEN Depression BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Depression >=8 THEN 'High'
	ELSE 'NULL'
END
From PortfolioProject..mxmh_survey_results

Select Insomnia,
CASE
	WHEN Insomnia <=4 THEN 'Low'
	WHEN Insomnia BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Insomnia >=8 THEN 'High'
	ELSE 'NULL'
END
From PortfolioProject..mxmh_survey_results

Select OCD,
CASE
	WHEN OCD <=4 THEN 'Low'
	WHEN OCD BETWEEN 5 AND 7 THEN 'Mid'
	WHEN OCD >=8 THEN 'High'
	ELSE 'NULL'
END
From PortfolioProject..mxmh_survey_results

Alter table PortfolioProject..mxmh_survey_results
Add AnxietyGrouped nvarchar(20)

Update PortfolioProject..mxmh_survey_results
Set AnxietyGrouped = CASE
	WHEN Anxiety <=4 THEN 'Low'
	WHEN Anxiety BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Anxiety >=8 THEN 'High'
	ELSE 'NULL'
END

Alter table PortfolioProject..mxmh_survey_results
Add DepressionGrouped nvarchar(20)

Update PortfolioProject..mxmh_survey_results
Set DepressionGrouped = CASE
	WHEN Depression <=4 THEN 'Low'
	WHEN Depression BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Depression >=8 THEN 'High'
	ELSE 'NULL'
END

Alter table PortfolioProject..mxmh_survey_results
Add InsomniaGrouped nvarchar(20)

Update PortfolioProject..mxmh_survey_results
Set InsomniaGrouped = CASE
	WHEN Insomnia <=4 THEN 'Low'
	WHEN Insomnia BETWEEN 5 AND 7 THEN 'Mid'
	WHEN Insomnia >=8 THEN 'High'
	ELSE 'NULL'
END

Alter table PortfolioProject..mxmh_survey_results
Add OCDGrouped nvarchar(20)

Update PortfolioProject..mxmh_survey_results
Set OCDGrouped = CASE
	WHEN OCD <=4 THEN 'Low'
	WHEN OCD BETWEEN 5 AND 7 THEN 'Mid'
	WHEN OCD >=8 THEN 'High'
	ELSE 'NULL'
END

Select * 
From PortfolioProject..mxmh_survey_results

Alter table PortfolioProject..mxmh_survey_results
Drop column Anxiety

Alter table PortfolioProject..mxmh_survey_results
Drop column Depression

Alter table PortfolioProject..mxmh_survey_results
Drop column Insomnia

Alter table PortfolioProject..mxmh_survey_results
Drop column OCD

Select Age
From PortfolioProject..mxmh_survey_results

-- Grouping the Ages into Children/Teen, Young Adults, Middle Age and Old
Select Age,
CASE
	WHEN Age < 18 THEN 'Children/Teen'
	WHEN Age BETWEEN 18 AND 30 THEN 'Young Adults'
	WHEN Age BETWEEN 31 AND 50 THEN 'Middle Age'
	WHEN Age >50 THEN 'Old'
	ELSE 'NULL'
END
From PortfolioProject..mxmh_survey_results

Alter table PortfolioProject..mxmh_survey_results
Add AgeGroup nvarchar(50)

UPDATE PortfolioProject..mxmh_survey_results
SET AgeGroup = CASE
	WHEN Age < 18 THEN 'Children/Teen'
	WHEN Age BETWEEN 18 AND 30 THEN 'Young Adults'
	WHEN Age BETWEEN 31 AND 50 THEN 'Middle Age'
	WHEN Age >50 THEN 'Old'
	ELSE 'NULL'
END

SELECT *
FROM PortfolioProject..mxmh_survey_results

ALTER TABLE PortfolioProject..mxmh_survey_results
DROP COLUMN EXPLORATORY