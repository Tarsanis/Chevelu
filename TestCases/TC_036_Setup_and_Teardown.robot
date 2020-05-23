*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot
Test Setup  Start Browser and Maximize  #To apply for all test cases
Test Teardown  Close Browser Window  #To apply for all test cases


*** Variables ***

*** Test Cases ***
Robot setup and teardown
    #[Setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Input Text  name:fld_username  Test
    Input Text  name:fld_email  Test@test.test
    Input Text  name:fld_password  123456

Robot setup and teardown next
    #[Setup]  Start Browser and Maximize
    #[Teardown]  Close Browser Window
    Select Radio Button  add_type  office