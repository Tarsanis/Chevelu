*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Ressources_TC.robot
Test Setup  Start Browser and Maximize  #To apply for all test cases
Test Teardown  Close Browser Window  #To apply for all test cases
#Suite Setup  Before Each Test Suite
#Suite Teardown  After Each Test Suite
Default Tags  DFLT
Force Tags  ALL

*** Variables ***

*** Test Cases ***
Robot setup and teardown
    [Tags]  One
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  Test@test.test
    Input Text  name:fld_password  123456

Robot setup and teardown next
    [Tags]  Two
    Select Radio Button  add_type  office

Robot just a log message
    log to console  DFLT