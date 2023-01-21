-- 1. Bigger than Russia
-- List each country name where the population is larger than that of 'Russia'. 
-- world(name, continent, area, population, gdp)

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

-- 2. Richer than UK
-- Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

SELECT name FROM world
  WHERE continent = 'Europe' AND gdp/population >
     (SELECT gdp/population FROM world
      WHERE name='United Kingdom')
      
-- 3. Neighbours of Argentina and Australia
-- List the name and continent of countries in the continents containing either Argentina or Australia.
-- Order by name of the country.

-- 4. Between United Kingdom and Germany
-- Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.

-- 5. Percentages of Germany
-- Germany (population 80 million) has the largest population of the countries in Europe.
-- Austria (population 8.5 million) has 11% of the population of Germany.
-- Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
-- The format should be Name, Percentage for example:
-- name	percentage
-- Albania	3%
-- Andorra	0%
-- Austria	11%
-- ...	...

-- 6. Bigger than every country in Europe
-- Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values) 

-- 7. Largest in each continent
-- Find the largest country (by area) in each continent, show the continent, the name and the area: 

-- 8. First country of each continent (alphabetically)
-- List each continent and the name of the country that comes first alphabetically.

-- 9. Difficult Questions That Utilize Techniques Not Covered In Prior Sections
-- Find the continents where all countries have a population <= 25000000.
-- Then find the names of the countries associated with these continents. Show name, continent and population. 

-- 10. Three time bigger
-- Some countries have populations more than three times that of all of their neighbours (in the same continent).
-- Give the countries and continents.