--Cleaning Data in SQL queries

SELECT *
FROM [MY Work].DBO.[fake job postings]

--To Check if there are any Duplicates

SELECT job_id, COUNT(*)
FROM [MY Work].DBO.[fake job postings]
GROUP BY job_id
ORDER BY COUNT(*) DESC

--Distinct

SELECT COUNT(DISTINCT title)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT location)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT company_profile)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT description)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT requirements)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT telecommuting)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT employment_type)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT required_experience)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT required_education)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT industry)
FROM [MY Work].DBO.[fake job postings]

SELECT COUNT(DISTINCT fraudulent)
FROM [MY Work].DBO.[fake job postings]

--Handling Null Values

SELECT COUNT(department) AS [TOT NO OF NULL]
FROM [MY Work].DBO.[fake job postings]
WHERE department IS NOT NULL

SELECT COUNT(salary_range) AS [TOT NO OF NULL]
FROM [MY Work].DBO.[fake job postings]
WHERE salary_range IS NULL

SELECT COUNT(benefits) AS [TOT NO OF NULL]
FROM [MY Work].DBO.[fake job postings]
WHERE benefits IS NULL;

--Deleting column 

ALTER TABLE [MY Work].DBO.[fake job postings]
DROP COLUMN department;
GO
SELECT *
FROM [MY Work].DBO.[fake job postings]

ALTER TABLE [MY Work].DBO.[fake job postings]
DROP COLUMN salary_range, benefits;
GO
SELECT *
FROM [MY Work].DBO.[fake job postings]

