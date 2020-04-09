from bs4 import BeautifulSoup
import requests, re

r = requests().content
soup = BeautifulSoup(r, "xtml")
 soup.findAll("a", "href" :re.compile
 )