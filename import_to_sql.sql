#Enable loading in file
set GLOBAL local_infile = 1;

#Drop table if it exists
DROP TABLE IF EXISTS prague_results;

#Create empty table for marathon results
CREATE TABLE prague_results(
runnerid TEXT,
country TEXT,
gender TEXT,
chiptime TEXT,
place INT,
gender_place INT,
year INT,
distance TEXT
);

#Load data frin the csv file into the table
LOAD DATA LOCAL
	INFILE "C:\\Users\\thoma\\Dropbox\\Data analysis projects\\marathon temperature effect\\Results_Prague_Aggregate.csv"
	INTO TABLE prague_results
    FIELDS TERMINATED BY ','
    IGNORE 1 rows;
    