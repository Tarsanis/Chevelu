*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    # text should be
    ${text1}=  set variable  Register now and kick start your career as a Software Testing Pro!
    element text should be  xpath://div[@id='tab-content1']/p  ${text1}
    input text  name:fld_username  Test
    #text should not be
    ${text2}=  set variable  TAGADA
    element text should not be  xpath://div[@id='tab-content1']/p  ${text2}
    input text  name:fld_username  Machin
    #test should contain
    ${text3}=  set variable  Register now and kick
    element should contain  xpath://div[@id='tab-content1']/p  ${text3}
    input text  name:fld_username  Truc
    #test should not contain
    ${text4}=  set variable  COIN COIN
    element should not contain  xpath://div[@id='tab-content1']/p  ${text4}
    input text  name:fld_username  Bidule