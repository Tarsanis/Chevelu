*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com/testings
${URL_2}  http://www.google.com

*** Test Cases ***
Robot Close All Browser Test Case
    Open Browser  ${URL_1}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  test@test.test
    Input Text  name:fld_password  1234
    Open Browser  ${URL_2}  ${Browser}
    sleep  1 second
    close all Browsers

*** Keywords ***