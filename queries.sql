SELECT name, count
FROM `babynames.names_2014`
WHERE gender = 'F'
ORDER BY count DESC
LIMIT 10;

SELECT gender, COUNT(DISTINCT name) AS unique_names, SUM(count) AS total_count
FROM `babynames.names_2014`
GROUP BY gender;

SELECT a.name
FROM (SELECT DISTINCT name FROM `babynames.names_2014` WHERE gender = 'M') a
JOIN (SELECT DISTINCT name FROM `babynames.names_2014` WHERE gender = 'F') b
ON a.name = b.name;

SELECT year, AVG(weight_pounds) AS avg_weight
FROM `bigquery-public-data.samples.natality`
WHERE weight_pounds IS NOT NULL
GROUP BY year
ORDER BY year;

SELECT state, COUNT(*) AS record_count
FROM `bigquery-public-data.samples.natality`
WHERE state IS NOT NULL
GROUP BY state
ORDER BY record_count DESC
LIMIT 10;

SELECT a.name AS name_2014, b.name AS name_2015
FROM (
  SELECT name FROM `babynames.names_2014` WHERE gender = 'F' ORDER BY count DESC LIMIT 1
) a,
(
  SELECT name FROM `babynames.names_2015` WHERE gender = 'F' ORDER BY count DESC LIMIT 1
) b;
