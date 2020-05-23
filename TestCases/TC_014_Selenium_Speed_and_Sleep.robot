*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Speed and Sleep Test Case
    ${speed}=  get selenium speed
    log to console  ${speed}
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    set selenium speed  2 seconds
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  test@test.test
    Input Text  name:fld_password  1234
    ${speed}=  get selenium speed
    log to console  ${speed}
    sleep  10 seconds
    Close Browser


*** Keywords ***
