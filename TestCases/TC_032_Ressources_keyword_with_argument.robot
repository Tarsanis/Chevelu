*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Opera

*** Test Cases ***
Robot resources with argument
    Start Browser and Maximize with arguments  ${URL}  ${Browser}
    Input Text  name:fld_username  Test2