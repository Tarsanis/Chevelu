*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    page should contain element  xpath://a[text()='View All Video']
    click element  xpath://a[text()='View All Video']
    go back
    page should not contain element  xpath://a[text()='TAGADA']
    click element  xpath://a[text()='View All Video']

    #Exemple de la video, mais leur site est endommage depuis
    #click element  xpath://a[text()='Login']
    #page should contain textfield  name:username
    #input text  name:username  Test@test.test
    #go back
    #page should not contain element  name:username1234
    #input text  name:username  Test@test.test