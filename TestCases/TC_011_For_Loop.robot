*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
For_Loop Test
    ${List1}=  create list  Hello  1  2.3  45  World01
    #FOR  ${i}  IN RANGE  1  10
    #    log to console  ${i}
    #END

    FOR  ${i}  IN  ${List1}
        log to console  ${i}
    END

*** Keywords ***