-- get quick view at the table
SELECT * FROM olympics LIMIT 5;

--1. What Are The Gender Categories and Their Counts
SELECT Gender, COUNT(Gender) AS GenderCategoryCount
FROM olympics
GROUP BY Gender;

--2. What are the 10 Most Popular Sports
SELECT Sport, COUNT(Sport) AS SportCategoryCount
FROM olympics
GROUP BY Sport
ORDER BY COUNT(Sport) DESC
LIMIT 10;

--3. How Many Gold Medals Were Taken Each Year
SELECT Year, COUNT(Meda)
FROM olympics
WHERE Meda = 'Gold'
GROUP BY YEAR
ORDER BY COUNT(Meda) DESC;

--4. Is All Athlete Are Unique each Year Or Not ==> Not Unique
SELECT COUNT(Athlete), COUNT(DISTINCT Athlete) FROM olympics;

--5. Athletes Who Took More than One Medal
SELECT Athlete, COUNT(Meda)
FROM olympics
GROUP BY Athlete
HAVING COUNT(Meda) > 1
ORDER BY COUNT(Meda) DESC;

--6. Athletes Who Took More than One Gold Medal
SELECT Athlete, COUNT(Meda)
FROM olympics
WHERE Meda = 'Gold'
GROUP BY Athlete
HAVING COUNT(Meda) > 1
ORDER BY COUNT(Meda) DESC;

--7. What Info Of PHELPS Michael and LATYNINA Larisa Play;
SELECT * FROM olympics
WHERE Athlete IN ('PHELPS Michael', 'LATYNINA Larisa');

--8. How Many Medals By it's type Does PHELPS Michael and LATYNINA Larisa took;
SELECT Athlete, Meda, Sport, COUNT(Meda) FROM olympics
WHERE Athlete IN ('PHELPS Michael', 'LATYNINA Larisa')
GROUP BY Meda, Athlete, Sport
ORDER BY Athlete;

--9. How Many Olympics Events Done in Each Country
SELECT Country, Sport, COUNT(*)
FROM olympics
GROUP BY Country, Sport
ORDER BY Country, COUNT(*) DESC;

--10. How Many Discipline in each Sport
SELECT Sport, COUNT(DISTINCT Discipline)
FROM olympics
GROUP BY Sport
ORDER BY COUNT(DISTINCT Discipline) DESC
LIMIT 10;

--11. How Many Medal Fore Each Gender Category
SELECT Gender, Meda, COUNT(Meda)
FROM olympics
GROUP BY Gender, Meda
ORDER BY COUNT(Meda);

--12. What is the Distinct Sport Category
SELECT Sport
FROM olympics
GROUP BY Sport;

--13. How Many Medal in Each Gender Category in Each Sport
SELECT Gender, Sport, COUNT(Meda)
FROM olympics
GROUP BY Gender, Sport
ORDER BY Gender, Sport;


