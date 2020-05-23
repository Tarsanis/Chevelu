*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com

*** Test Cases ***
Robot Keybord Commands Test Case
    Open Browser  ${URL_1}  ${Browser}
    maximize browser window
    Set Selenium Timeout  10 seconds
    ##Attendre que la page contienne un texte precis
    #wait until page contains  VIDEOS
    ##Attendre que la page contienne un element precis
    #wait until page contains element  xpath://span[contains(text(),'VIDEOS')]
    #Attendre qu'un element precis contienne un texte precis
    wait until element contains  xpath://a[text()='Login']  Login
    click element  xpath://span[contains(text(),'VIDEOS')]


*** Keywords ***