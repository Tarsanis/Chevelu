*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Opera
${URL_1}  http://www.thetestingworld.com

*** Test Cases ***
Robot Keybord Operations Test Case
    Open Browser  ${URL_1}  ${Browser}
    maximize browser window
    #Cliquer sur s'identitier
    click link  xpath://a[text()='Login']
    #Entrer hello dans le champs username comme si on le tapait au clavier, méthode alternative au TC_005
    press keys  name:username  hello
    #Appuyer sur le bouton entrée
    press keys  xpath://button[@type='submit']  \\13


*** Keywords ***