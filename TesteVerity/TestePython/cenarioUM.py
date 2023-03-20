from pyparsing import javaStyleComment
from selenium import webdriver
import time
from selenium.webdriver.common.by import By



driver = webdriver.Chrome()
driver.maximize_window()

driver.get('https://www.verity.com.br')
time.sleep(2)


# Validação do elemento "Nossas soluções"
elemento_nossas_solucoes = driver.find_element(By.XPATH ,"//span[contains(.,'Nossas soluções_')]")
assert elemento_nossas_solucoes.is_displayed()

# Fechamento do navegador
driver.quit()