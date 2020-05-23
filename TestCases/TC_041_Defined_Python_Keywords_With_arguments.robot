*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***
${Browser}  Opera
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***
Robot use python keywords with arguments
    Create this Folder and Subfolder At Runtime  Test_TC_041  WithArguments
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Close Browser