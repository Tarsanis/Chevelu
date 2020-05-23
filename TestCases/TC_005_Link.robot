*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot Link Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link  xpath://a[text()='Read Detail']
    #Close Browser