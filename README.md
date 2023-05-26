# Prague_marathon

## Data Acquisition

The Prague Marathon results were obtained from the Marathon website using the python script "Web_scrape_prague_marathon.py". The parameter file “prague_marathon_subevent.csv” was used to store settings for each year and could be modified to acquire data from other Run Czech events. For each year of the marathon, all the results were saved in a .csv file with the fields: bibno (bib number, as a unique identifier), country, gender, place (finish position) and genderrank (finish position in gender group).

Weather data was obtained from open-meteo.com using the python script “Web_scrape_prague_weather.py” and the parameter file “prague_marathon_subevent.csv”. The weather was obtained for Prague city centre at 10am CET+1 the day of the marathon. The weather data for all years was saved into a single .csv file with the fields: year, temperature_2m (in degC), relativehumidity_2m (in %), surface_pressure (in mbar), precipitation (in mm), cloudcover (in %), windspeed_10m (in kmph) and winddirection_10m (in degrees).

## Data Cleaning and Processing

The marathon results .csv files were inspected and compared to the Prague Marathon results webpage for any errors. The scraped data was found to exactly correspond to the reported results on the webpage. 288 entries were found to not contain a finish time, with 284 of these being in the 1998 event. It appears that these results were for runners who started but did not complete the marathon, and all these results were manually deleted from the .csv files. It was also found that the country labels were not consistent for every year. For example, in some years Germany was labelled as “DEU” while in others it was “GER”. The fix for this inconstancy will be described in the next paragraph.

The marathon result .csv files for individual years were combined into a single master .csv file using the python script “Prague_Marathon_Aggregate_Results”. The bibno column was changed to a unique id, with the form PRGmaraYB, where Y is the year of the event, and B is the bib number. Columns were also added for year and distance (to allow for the comparison with other race distances, which was ultimately not used in this analysis). To account for the inconsistent country labels (see previous paragraph), a find and replace function was used to make the results for different years consistent. Countries with <50 runners were not corrected, as they would not be considered during the analysis.

The master results and the weather .csv files were loaded into MySQL Workbench using the code in “import_to_sql.sql”. 

The marathon results were then aggregated by year and gender using the code “Prague_marathon_group_years.sql”. In this code, the number of runners, the mean finish time and the winner finish time (all for men, women and overall) were obtained for each year. The resulting table was joined to the weather data table. Finally, the resulting table was saved as a .csv file.

The marathon results were also aggregated by the nation of the runners using the code “Prague_marathon_group_nation”. The data was aggregated into a table with rows containing the nationality of the runner and columns with the year. This table was also saved as a .csv file.


## Data Analysis and Visualisation

The .csv files with the aggregated results were imported into the excel file “prague_marathon_analysis.xslx”. Each data set was plotted into a graph, and where necessary, trend lines were fitted using a least squares method.
