use CAVE_HEALTH_SURVEY;

-- Won't work if sql_mode=only_full_group_by happens to be enabled.
-- So disable it.
SET sql_mode = '';

-- Answer using only one SQL query for each question.

--
-- 1. Find out the average weight for each country.
--
select country, avg(weight) from survey group by country;

--
-- 2. Create a list of the number of respondents from each country. Order the list by the number of respondents.
-- Show only those countries where the number of respondents was greater than 3.
--
select count(*), country from survey group by country having count(*) > 3 order by count(*);

--
-- 3. Display the average height for each country. Show also the number of respondents for each country and order the list by average height.
--

select count(*), country, avg(height) from survey group by country order by avg(height);

--
-- 4. For each country, find the average weight of both men and women in that country, and the number of respondents in each gender-country category.
-- Display only those categories containing more than two respondents. Order the results by country.
--

select gender, count(*), country, avg(weight) from survey group by country, gender having count(*) > 2 order by country ;

--
-- 5. For each of the possible four answers to the exercise question, display the average health score for the respondents in that group. Order from poor health to good health.
-- Is there any relationship between reported amount of exercise and reported state of health? If so, why?
--

select exercise, avg(health) from survey group by exercise order by health
