import requests
import os

initurl = "https://archive-api.open-meteo.com/v1/archive?latitude=50.09&longitude=14.42&start_date=cccccccccc&end_date=cccccccccc&hourly=dddddddddd"      #url of weather api
parameter_file = "prague_marathon_subevent.csv"       #reads parameter file with date of events
events = open(parameter_file, "r").readlines()

weathertypes = ["temperature_2m",       #weather parameters to extract
"relativehumidity_2m",
"surface_pressure",
"precipitation",
"cloudcover",
"windspeed_10m",
"winddirection_10m"
]

text = "year, "     #write header
for i in weathertypes:
    text = text+i+", "
text = text[:-2]+"\n"

for j in range(len(events)-1):      #iterates over events
    info = events[j+1].split(",")       #pulls event info
    year = info[0]
    date = info[3]
    time = 8        #wather for 8am GMT/10am CET+1

    text = text + "%s, "%str(year)      #adds year to new line
    for element in weathertypes:        #iterates over weather parameters
        url = initurl
        url = url.replace("cccccccccc", date)       #changes url to read weather parameter for year
        url = url.replace("dddddddddd", element)
        weatherdata = requests.get(url).json()      #extracts weather information
        weather = weatherdata["hourly"][element][time]
        text = text+str(weather)+", "
    text = text[:-2]+"\n"
    print(text)

saveas = "prague_marathon_weather"      #deletes output csv file if it already exists and saves new output csv file
if os.path.exists("%s.csv"%saveas):
    os.remove("%s.csv"%saveas)
y = open("%s.csv"%saveas, "a")
y.writelines(text)

