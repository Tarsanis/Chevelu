*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
Define List Test
    ${List1}=  create list  Hello  1  2.3  45  World01
    ${list_length}  get length  ${List1}
    log to console  ${list_length}
    ${list_data}=  get from list  ${List1}  4
    log to console  ${list_data}

*** Keywords ***