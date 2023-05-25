DROP TEMPORARY TABLE IF EXISTS nat_all
;
CREATE TEMPORARY TABLE nat_all
SELECT 
	country,
    COUNT(*) AS 'count'
FROM prague_results
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_1995
;
CREATE TEMPORARY TABLE nat_1995
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 1995
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_1996
;
CREATE TEMPORARY TABLE nat_1996
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 1996
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_1997
;
CREATE TEMPORARY TABLE nat_1997
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 1997
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_1998
;
CREATE TEMPORARY TABLE nat_1998
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 1998
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_1999
;
CREATE TEMPORARY TABLE nat_1999
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 1999
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2000
;
CREATE TEMPORARY TABLE nat_2000
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2000
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2001
;
CREATE TEMPORARY TABLE nat_2001
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2001
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2002
;
CREATE TEMPORARY TABLE nat_2002
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2002
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2003
;
CREATE TEMPORARY TABLE nat_2003
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2003
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2004
;
CREATE TEMPORARY TABLE nat_2004
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2004
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2005
;
CREATE TEMPORARY TABLE nat_2005
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2005
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2006
;
CREATE TEMPORARY TABLE nat_2006
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2006
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2007
;
CREATE TEMPORARY TABLE nat_2007
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2007
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2008
;
CREATE TEMPORARY TABLE nat_2008
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2008
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2009
;
CREATE TEMPORARY TABLE nat_2009
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2009
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2010
;
CREATE TEMPORARY TABLE nat_2010
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2010
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2011
;
CREATE TEMPORARY TABLE nat_2011
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2011
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2012
;
CREATE TEMPORARY TABLE nat_2012
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2012
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2013
;
CREATE TEMPORARY TABLE nat_2013
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2013
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2014
;
CREATE TEMPORARY TABLE nat_2014
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2014
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2015
;
CREATE TEMPORARY TABLE nat_2015
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2015
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2016
;
CREATE TEMPORARY TABLE nat_2016
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2016
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2017
;
CREATE TEMPORARY TABLE nat_2017
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2017
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2018
;
CREATE TEMPORARY TABLE nat_2018
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2018
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2019
;
CREATE TEMPORARY TABLE nat_2019
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2019
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2022
;
CREATE TEMPORARY TABLE nat_2022
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2022
GROUP BY country
ORDER BY count(*) DESC
;

DROP TEMPORARY TABLE IF EXISTS nat_2023
;
CREATE TEMPORARY TABLE nat_2023
SELECT 
	country,
    COUNT(*) as 'count'
FROM prague_results
WHERE year = 2023
GROUP BY country
ORDER BY count(*) DESC
;

select *
from nat_all
;

SELECT 
	nat_all.country,
	nat_all.count as 'all',
    nat_1995.count as '1995',
    nat_1996.count as '1996',
    nat_1997.count as '1997',
    nat_1998.count as '1998',
    nat_1999.count as '1999',
    nat_2000.count as '2000',
    nat_2001.count as '2001',
    nat_2002.count as '2002',
    nat_2003.count as '2003',
    nat_2004.count as '2004',
    nat_2005.count as '2005',
    nat_2006.count as '2006',
    nat_2007.count as '2007',
    nat_2008.count as '2008',
    nat_2009.count as '2009',
    nat_2010.count as '2010',
    nat_2011.count as '2011',
    nat_2012.count as '2012',
    nat_2013.count as '2013',
    nat_2014.count as '2014',
    nat_2015.count as '2015',
    nat_2016.count as '2016',
    nat_2017.count as '2017',
    nat_2018.count as '2018',
    nat_2019.count as '2019',
    nat_2022.count as '2022',
    nat_2023.count as '2023'
FROM nat_all
LEFT JOIN nat_1995 ON nat_all.country = nat_1995.country
LEFT JOIN nat_1996 ON nat_all.country = nat_1996.country
LEFT JOIN nat_1997 ON nat_all.country = nat_1997.country
LEFT JOIN nat_1998 ON nat_all.country = nat_1998.country
LEFT JOIN nat_1999 ON nat_all.country = nat_1999.country
LEFT JOIN nat_2000 ON nat_all.country = nat_2000.country
LEFT JOIN nat_2001 ON nat_all.country = nat_2001.country
LEFT JOIN nat_2002 ON nat_all.country = nat_2002.country
LEFT JOIN nat_2003 ON nat_all.country = nat_2003.country
LEFT JOIN nat_2004 ON nat_all.country = nat_2004.country
LEFT JOIN nat_2005 ON nat_all.country = nat_2005.country
LEFT JOIN nat_2006 ON nat_all.country = nat_2006.country
LEFT JOIN nat_2007 ON nat_all.country = nat_2007.country
LEFT JOIN nat_2008 ON nat_all.country = nat_2008.country
LEFT JOIN nat_2009 ON nat_all.country = nat_2009.country
LEFT JOIN nat_2010 ON nat_all.country = nat_2010.country
LEFT JOIN nat_2011 ON nat_all.country = nat_2011.country
LEFT JOIN nat_2012 ON nat_all.country = nat_2012.country
LEFT JOIN nat_2013 ON nat_all.country = nat_2013.country
LEFT JOIN nat_2014 ON nat_all.country = nat_2014.country
LEFT JOIN nat_2015 ON nat_all.country = nat_2015.country
LEFT JOIN nat_2016 ON nat_all.country = nat_2016.country
LEFT JOIN nat_2017 ON nat_all.country = nat_2017.country
LEFT JOIN nat_2018 ON nat_all.country = nat_2018.country
LEFT JOIN nat_2019 ON nat_all.country = nat_2019.country
LEFT JOIN nat_2022 ON nat_all.country = nat_2022.country
LEFT JOIN nat_2023 ON nat_all.country = nat_2023.country