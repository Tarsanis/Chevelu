*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot use python keywords without arguments
    Create Folder At Runtime
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Close Browser