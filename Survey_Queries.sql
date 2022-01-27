/*How many respondents are in their 20s, 30s, etc?*/
SELECT DISTINCT
CONCAT(substring(Age,1,1), "0s") AS Age_Groups, COUNT(Respondent)
FROM survey_demographics
GROUP BY Age_Groups
ORDER BY Age_Groups ASC;

/*Respondent ethnicities*/
SELECT
SUBSTRING_INDEX(`Ethnicity`, ';', 1) as Primary_Ethnicity, Count(Respondent)
 FROM survey_demographics
 GROUP BY Primary_Ethnicity
 ORDER BY Count(Respondent) DESC;

/*Respondent Gender Percentage*/
SELECT DISTINCT(Gender), COUNT(Respondent) FROM survey_demographics
GROUP BY Gender;
/*Still need to calculate the percentage*/

/*Respondent country*/
SELECT DISTINCT(Country), COUNT(Respondent) FROM survey_data
GROUP BY Country
ORDER BY COUNT(Respondent) DESC;

/*Number of Respondents*/
SELECT COUNT(Respondent) FROM survey_data;


