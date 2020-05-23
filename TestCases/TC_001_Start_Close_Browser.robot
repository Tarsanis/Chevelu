*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_001 Browser Start and Close
    Open Browser  ${URL}  ${Browser}
    Close Browser