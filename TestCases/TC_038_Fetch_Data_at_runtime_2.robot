*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot fetch data first part
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Select from list by index  name:sex  1
    ${Val}=  Get Selected List Value  name:sex
    log  ${Val}
    ${Text}=  Get Selected List Label  name:sex
    log  ${Text}
    ${AllLabels}=  Get List Items  name:sex
    log  ${AllLabels}
    Close Browser