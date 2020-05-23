*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.facebook.com/

*** Test Cases ***
Robot Button Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  id:email  hello
    Input Text  id:pass  abcd
    Click Button  xpath://input[@type='submit']
    #Close Browser