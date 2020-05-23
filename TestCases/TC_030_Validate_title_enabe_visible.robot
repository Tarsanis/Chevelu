*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    #Validate title
    title should be  Login & Sign Up Forms
    ##Validate enabled element
    element should be enabled  name:fld_username
    #element should be disabled
    ##Validate visible element
    element should be visible  name:fld_username
    #element should be visible