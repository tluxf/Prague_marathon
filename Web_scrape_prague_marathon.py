#Pulls data for each runner of the prague marathon for each year (1995-2022), and saves the results for each year in a
#csv file.

import requests
import os

#url of results api. xxxxxxxxxx to be replaced with subevent id in text file
initurl = "https://www.runczech.com/api/runner-results/v1/results/?subeventId=xxxxxxxxxx&page=1&per_page=1&sort=finishTime"

#text file containing the year, subevent id. date and number of finishers
events = open("prague_marathon_subevent_3.csv", "r").readlines()


for i in range(len(events)-1):      #iterates over the years in the events file
    year = events[i+1].split(",")[0]        #get the year, distance and subevent id from the events file
    distance = events[i+1].split(",")[1]
    subevent = events[i+1].split(",")[2]

    url = str.replace(initurl, 'xxxxxxxxxx', subevent)      #get the url for the results of the event
    result = requests.get(url).json()
    last = result['totalNumberOfRecords']
    rank = 1

       text = []
    text.append("bibno, country, gender, chiptime, place, genderrank\n")    #Write output csv header

    while rank < last+1:        #iterates over all the runners in the event
        result = requests.get(url).json()       #pulls the result data
        result = result['data'][0]

        if 'bibNumber' in result:       #writes a line with the bib number, country, gender, rank and gender rank
            bibno = result['bibNumber']
        else:
            bibno = 'na'
        if 'country' in result:
            country = result['country']
        else:
            country = 'na'
        if 'sex' in result:
            gender = result['sex'][0]
        else:
            gender = 'na'
        if 'chipTime' in result:
            chiptime = result['chipTime']['time']
        else:
            chiptime = 'na'
        if 'rank' in result:
            place = result['rank']
        else:
            place = 'na'
        if 'rankBySex' in result:
            genderrank = result['rankBySex']
        else:
            genderrank = 'na'

        newline = "%s, %s, %s, %s, %s, %s\n"%(bibno, country, gender, chiptime, place, genderrank)      #adds pulled data to output csv file.
        text.append(newline)
        print("%s of %s results processed for %s. %s %s"%(str(rank), last, year, distance, newline[0:-1]))

        url = str.replace(url, "page=%s&per"%str(rank), "page=%s&per"%str(rank+1)) #incriments over the runner number
        rank = rank+1

    saveas = "Results_Prague_"+distance+"_"+year        #deletes the output csv file if it exists, and saves new csv file
    if os.path.exists("%s.csv"%saveas):
        os.remove("%s.csv"%saveas)
    y = open("%s.csv"%saveas, "a")
    y.writelines(text)

print("data successfully pulled")