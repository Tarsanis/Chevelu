*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    select checkbox  name:terms
    checkbox should be selected  name:terms
    click element  name:terms
    checkbox should not be selected  name:terms