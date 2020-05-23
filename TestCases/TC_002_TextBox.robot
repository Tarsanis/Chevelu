*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot TestBox Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  TestingWorld
    #Input Text  name:fld_email  test@test.test
    Input Text  xpath://input[@name='fld_email']  test@test.test
    Clear Element Text  name:fld_username
    Close Browser