#Tutorial from: https://www.youtube.com/watch?v=XyyMjKOqyOk

import requests
import bs4

dateList=[]
highList=[]
marketCapList=[]

r = requests.get('https://coinmarketcap.com/currencies/bitcoin/historical-data/?start=20130428&end=20190423')
soup = bs4.BeautifulSou(r.text,"lxml")

tr = soup.find_all('tr',{'class':'text-right'})
for item in tr:
    dateList.append(item.find('td',{'class':'text-left'}).text)
    highList.append(item.find_all('td')[2].text)
    marketCapList.append(item.find_all('td')[6].text)
    #print(item.find('td',{'class':'text-left'}).text)
#soup.find('td')
#soup.find_all('td')[2]
#soup.find('tr'{'class':'text-right'}).find('td',{'class':'text-left'}).text


