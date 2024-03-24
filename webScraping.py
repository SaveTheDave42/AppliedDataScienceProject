import requests #make http requests
import xlwt #store data in excel
from bs4 import BeautifulSoup #pull data out of HTML and XML files
import os #provides functions for interacting with the operating system

# Get current working directory
print(os.getcwd())


wb = xlwt.Workbook()
ws = wb.add_sheet('Emails')
ws.write(0,0,'Emails')
emailList = []
r = 0

# Add url of the page you want to scrape to urlString
urlString = 'https://www.homegate.ch/kaufen/immobilien/kanton-zuerich/trefferliste'
# urlString='https://www.agvs-upsa.ch/de/verband/mitgliederverzeichnis/liste'
def emailExtractor(urlString):
    getH=requests.get(urlString)
    h=getH.content
    soup=BeautifulSoup(h,'html.parser')
    mailtos = soup.select('a[href^=mailto]')
    for i in mailtos:
        href=i['href']
        try:
            str1, str2 = href.split(':')
        except ValueError:
            break
        
        emailList.append(str2)

emailExtractor(urlString)

# Parts of the function ...
getH = requests.get(urlString)
print(getH)

# HTML-document
h    = getH.content
print(h[0:1000])

# HTML parse tree
soup = BeautifulSoup(h,'html.parser')
# print(soup)

# Links containing emails
mailtos = soup.select('a[href^=mailto]')
print(mailtos[0:3])

# Get single email
href = mailtos[0]['href']
href

# Splits the string
str1, str2 = href.split(':')
str2

for email in emailList:
    r=r+1
    ws.write(r,0,email)
    print(email)
wb.save('emails.xls')