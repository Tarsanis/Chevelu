*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Selenium Timeout Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    set selenium timeout  20 seconds
    ${Selenium_Timeout}=  get selenium timeout
    log to console  ${Selenium_Timeout}
    wait until page contains  Truc
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  test@test.test
    Input Text  name:fld_password  1234


*** Keywords ***
