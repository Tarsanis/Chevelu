*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC use json data
    Open Browser  ${URL}  ${Browser}
    ${username}=  Read Element Locator  Registration.username_textbox_name
    Input Text  name:${username}  Test
    ${email}=  Read Element Locator  Registration.email_textbox_name
    Input Text  name:${email}  test@test.test
    ${password}=  Read Element Locator  Registration.password_textbox_name
    Input Text  name:${password}  1234
    Close Browser

*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result}=  read_locator_from_json  ${JsonPath}
    [return]  ${result}