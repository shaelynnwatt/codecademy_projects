.open db.sqlite

--What years are covered by the dataset?
SELECT "The years covered by this dataset are:";

SELECT DISTINCT year 
FROM population_years;

--WHAT is the largest population size for Gabon in this dataset?
SELECT "The largest population size for Gabon in this dataset is:";
SELECT MAX(population) AS 'max pop'
FROM population_years
WHERE country = 'Gabon';

--What were the 10 lowest population countries in 2005?
SELECT "The ten lowest population countries in 2005 were:";
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population
LIMIT 10;

--What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT "Countries with a population of over 100 million in the year 2010 include:";
SELECT DISTINCT country
FROM population_years
WHERE population > 100
  AND year = 2010;

--How many countries in this dataset have the word "Islands" in their name?
SELECT "The number of countries in this dataset with the word Islands in their name:";
SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE "%Islands%";

SELECT DISTINCT country
FROM population_years
WHERE country LIKE "%Islands%";

--What is the difference in population between 2000 and 2010 in Indonesia?
SELECT "The difference in Indonesia's population between 2000 and 2010:";

SELECT (SELECT population
FROM population_years
WHERE country = "Indonesia"
  AND year = 2010)
-
(SELECT population
FROM population_years
WHERE country = "Indonesia"
  AND year = 2000);



--My own question (to test my git push!):  How many countries in this database start with the letter A?
SELECT "The number of countries whose names start with A:"
SELECT COUNT(DISTINCT country)
FROM population_years
WHERE country LIKE "A%";


