*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot
Documentation  This test is an example of how to add documentation

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Opera

*** Test Cases ***
Robot resources with argument and with value returned
    [Documentation]  Start browser and add text to textbox
    ${Res}=  Start Browser and Maximize with arguments and return title  ${URL}  ${Browser}
    Input Text  name:fld_username  ${Res}