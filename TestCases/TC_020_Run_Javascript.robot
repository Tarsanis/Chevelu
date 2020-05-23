*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com

*** Test Cases ***
Robot Run Javascript Test Case
    Open Browser  ${URL_1}  ${Browser}
    maximize browser window
    execute javascript  window.scrollTo(0,1000)
    sleep  10 seconds
    Close Browser

*** Keywords ***