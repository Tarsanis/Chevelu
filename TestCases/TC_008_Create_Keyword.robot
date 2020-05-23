*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot TestBox Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Enter Username Email and Password  Test  test@test.test  1234

*** Keywords ***
Enter Username Email and Password
    [Arguments]  ${username}  ${email}  ${password}
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_email  ${email}
    Input Text  name:fld_password  ${password}
