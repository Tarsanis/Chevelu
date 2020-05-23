*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot CheckBox Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select Checkbox  name:terms
    #Select Checkbox  terms
    #Close Browser