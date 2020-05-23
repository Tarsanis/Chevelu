*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com/testings
${URL_2}  http://www.google.com

*** Test Cases ***
Robot Go To Go Back Get Location Test Case
    Open Browser  ${URL_1}  ${Browser}
    go to  ${URL_2}
    ${URL_current}=  get location
    log to console  ${URL_current}
    go back
    ${URL_current}=  get location
    log to console  ${URL_current}

*** Keywords ***