from pyparsing import javaStyleComment
from selenium import webdriver
import time
from selenium.webdriver.common.by import By



driver = webdriver.Chrome()
driver.maximize_window()

driver.get('https://www.verity.com.br')
time.sleep(2)


# clicando em "contato"
driver.find_element(By.ID ,"comp-kevyodnk5label").click()
time.sleep(1)

#preenchendo os dados"
driver.find_element(By.ID ,'input_comp-kwz6tqej').send_keys("Guilherme Soares")
driver.find_element(By.ID ,'input_comp-kwz6tqf7').send_keys("dexter342@gmail.com")
driver.find_element(By.ID ,'input_comp-kwz6tqfe').send_keys("22981248202")
driver.find_element(By.ID ,'textarea_comp-kwz6tqfr').send_keys("Eu sempre tento estudar para poder melhorar meu desempenho e ajudar a empresa a ter um melhor setor de qualidade.")
driver.find_element(By.ID ,'comp-kwz6tqgp').click()
driver.find_element(By.CSS_SELECTOR ,'#comp-kwz6tqhd > button').click()
time.sleep(4)
#problema com verificação de robô
driver.find_element(By.XPATH ,'//*[@id="recaptcha-anchor"]/div[4]').click()
