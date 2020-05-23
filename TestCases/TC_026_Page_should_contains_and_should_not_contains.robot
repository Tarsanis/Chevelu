*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    page should contain  VIDEOS
    click element  xpath://a[text()='Login']
    sleep  3 seconds
    go back
    page should not contain  VIDEOS1234
    click element  xpath://a[text()='Login']