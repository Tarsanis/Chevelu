*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Screenshot Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  test@test.test
    Input Text  name:fld_password  1234
    capture page screenshot  ../Snapshots/TC_017.png

*** Keywords ***