*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Define and Display Variable Test
    ${Var1}=  set variable  HelloWorld
    log to console  ${Var1}

*** Keywords ***