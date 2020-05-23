*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
Run Keyword Test
    ${Key_var}=  set variable  log to console
    run keyword  ${key_var}  test@test.test

*** Keywords ***