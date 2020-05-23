*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com

*** Test Cases ***
Robot Mouse Operations Test Case
    Open Browser  ${URL_1}  ${Browser}
    maximize browser window
    #Menu contextuel (clic droit)
    Open Context Menu  xpath://span[contains(text(),'VIDEOS')]
    sleep  3 seconds
    #Double clic
    Double Click Element  xpath://a[contains(text(), 'Login')]
    sleep  3 seconds
    #Mouse Down
    Mouse Down  xpath://a[contains(text(), 'Registration')]
    sleep  3 seconds
    #Mouse Up
    Mouse Up  xpath://a[contains(text(), 'Registration')]
    sleep  3 seconds
    #Mouse Over
    Mouse Over  xpath://span[contains(text(),'VIDEOS')]
    sleep  3 seconds
    #Drag n Drop
    #Drag and Drop  id:box_depart  id:box_arrive
    #Simple clic
    #Click Element ou CLick Button du TC_006_Button.robot

*** Keywords ***