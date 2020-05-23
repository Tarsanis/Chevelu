*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Opera

*** Test Cases ***
Robot resources with argument and with value returned
    ${Res}=  Start Browser and Maximize with arguments and return title  ${URL}  ${Browser}
    Input Text  name:fld_username  ${Res}