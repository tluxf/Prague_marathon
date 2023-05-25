DROP TEMPORARY TABLE IF EXISTS temp_M
;
CREATE TEMPORARY TABLE temp_M
SELECT 
	year, 
	count(*) as 'runners_m',
    AVG(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'mean_finish_time_m',
    MIN(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'winner_finish_time_m'
FROM prague_results
WHERE gender = 'M'
GROUP BY year
;

DROP TEMPORARY TABLE IF EXISTS temp_F
;
CREATE TEMPORARY TABLE temp_F
SELECT 
	year, 
	count(*) as 'runners_f',
    AVG(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'mean_finish_time_f',
    MIN(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'winner_finish_time_f'
FROM prague_results
WHERE gender = 'F'
GROUP BY year
;

DROP TEMPORARY TABLE IF EXISTS temp_all
;
CREATE TEMPORARY TABLE temp_all
SELECT 
	year, 
	count(*) as 'runners_all',
    AVG(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'mean_finish_time_all',
    MIN(cast(substring(chiptime,1,1) as decimal) +
		cast(substring(chiptime,3,2) as decimal)/60 +
		cast(substring(chiptime,6,2) as decimal)/3600) as 'winner_finish_time_all'
FROM prague_results
GROUP BY year
;

DROP TABLE IF EXISTS prague_year_aggregate
;
CREATE TABLE prague_year_aggregate
SELECT 
	temp_all.year,
    temp_all.runners_all,
    temp_M.runners_M,
    temp_F.runners_F,
    temp_all.mean_finish_time_all,
    temp_M.mean_finish_time_M,
    temp_F.mean_finish_time_F,
    temp_all.winner_finish_time_all,
    temp_m.winner_finish_time_m,
    temp_f.winner_finish_time_f,
    prague_weather.temperature, 
    prague_weather.humidity, 
    prague_weather.pressure, 
    prague_weather.precipitation, 
    prague_weather.cloudcover, 
    prague_weather.windspeed, 
    prague_weather.winddirection
FROM temp_all
LEFT JOIN temp_M ON temp_all.year = temp_M.year
LEFT JOIN temp_F ON temp_all.year = temp_F.year
LEFT JOIN prague_weather ON temp_all.year = prague_weather.year
ORDER BY temp_all.year
;

DROP TEMPORARY TABLE IF EXISTS temp_M
;
DROP TEMPORARY TABLE IF EXISTS temp_F
;
DROP TEMPORARY TABLE IF EXISTS temp_all
;

SELECT * FROM prague_year_aggregate
;