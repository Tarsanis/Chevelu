*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/
${var2}  http://www.google.com

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    open browser  ${var2}  Opera
    maximize browser window
    switch browser  1
    ${url1}=  get location
    log to console  ${url1}
    click element  xpath://a[text()='Login']
    switch browser  2
    ${url2}=  get location
    log to console  ${url2}
    input text  name:q  HelloWorld
    close all browsers
