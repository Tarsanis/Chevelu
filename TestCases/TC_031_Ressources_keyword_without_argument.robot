*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***

*** Test Cases ***
Robot resources without argument
    Start Browser and Maximize
    Input Text  name:fld_username  Test