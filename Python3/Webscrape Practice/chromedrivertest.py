"""
import os
from selenium import webdriver
chromedriver = "/usr/lib/chromium-browser/chromedriver"
os.environ["webdriver.chrome.driver"] = chromedriver
driver = webdriver.Chrome(chromedriver)
driver.get("http://stackoverflow.com")
"""
from selenium import webdriver
import time

options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
options.add_argument("--test-type")
options.add_argument("--no-sandbox")
options.add_argument("--headless")
options.binary_location = "/usr/bin/chromium-browser"
driver = webdriver.Chrome(chrome_options=options)
driver.get('https://python.org')

