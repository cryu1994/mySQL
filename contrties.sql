SELECT countries.name, languages.language, languages.percentage

FROM countires
    JOIN languages on countries.id = languages.country_id

WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

SELECT cities.name, COUNT(cities.id) as num_cities 
FROM countries
    JOIN cities on countries.id = cities.country_id
GROUP BY countries.id
ORDER BY num_cities DESC;

SELECT cities.name, cities.population 
FROM countries
    join cities ON countries.id = cities.country_id
WHERE countries.name = "Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.name, languages.language, languages.percentage
FROM countries
        JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE countries.surface_area > 501;

SELECT countries.name, countries.government_form, countries.capital
FROM countries
WHERE countries.government_form = "Constitutional Monarchy"
        AND countries.life_expectancy > 75
        AND countries.capital > 200;

SELECT countries.name, cities.name, cities.district, cities.popluation
FROM countries
    JOIN cities ON countries.id = cities.country_id
WHERE countries.name = 'Argentina'
    AND cities.district = 'Buenos Aires'
    AND cities.population > 500000;

SELECT conutries.region, COUNT(countries.id) as num_countries
FROM countries
GROUP BY countries
ORDER BY    num_countries DESC;
