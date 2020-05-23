*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot fetch data first part
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    ${ActualURL}=  Get Location
    Log  ${ActualURL}
    ${PageHTML}=  Get Source
    Log  ${PageHTML}
    ${Attr}=  Get Element Attribute  name:fld_username  class
    Log  ${Attr}
    ${cnt}=  Get Element Count  class:field
    log  ${cnt}
    Close Browser