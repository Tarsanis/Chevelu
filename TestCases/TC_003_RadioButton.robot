*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot RadioButton Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Select Radio Button  add_type  office
    #Close Browser