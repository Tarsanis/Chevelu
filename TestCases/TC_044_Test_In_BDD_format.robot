*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***


*** Test Cases ***
Robot use python keywords with arguments
    Given Start Browser and Maximize
    When Create this Folder and Subfolder At Runtime  Test_TC_044  WithArguments
    Then Concatenante username and password  ABCD  1234
