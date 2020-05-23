*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot fetch data first part
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    ${PageTitle}=  Get Title
    log to console  ${PageTitle}
    ${Speed}=  Get Selenium Speed
    log to console  ${Speed}
    ${Value}=  Get Value  xpath://input[@type='submit']
    log to console  ${Value}
    ${Text}=  Get Text  xpath://a[@class='displayPopup']
    log to console  ${Text}
    Close Browser