*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot List or Dropdown Test Case
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    #Select From List By Index  name:sex  2
    #Select From List By Value  name:sex  1
    Select From List By Label  name:sex  Male