*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Implicity wait Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${Default_Timeout}=  get selenium implicit wait
    log to console  ${Default_Timeout}
    set selenium implicit wait  20 seconds
    ${Default_Timeout}=  get selenium implicit wait
    log to console  ${Default_Timeout}
    Input Text  name:fld_username_x  Test
    Input Text  name:fld_email  test@test.test
    Input Text  name:fld_password  1234


*** Keywords ***
