*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  http://robotframework.org/

*** Test Cases ***
Robot Handle Multiple Browsers
    open browser  ${var1}  Opera
    maximize browser window
    click element  //a[@href="https://robotframework.org/rpa/"]

    #Selectionner les ongets méthode 1
    select window  Robot Framework
    ${url1}=  get location
    log to console  ${url1}
    select window  Robot Framework RPA
    ${url2}=  get location
    log to console  ${url2}

    #Selectionner les onglets méthode 2
    @{list1}  get window handles
    FOR  ${win}  IN  @{list1}
        select window  ${win}
        ${url}=  get location
        log to console  ${url}
    END

    #Selectionner un onglet via son url
    select window  url=https://robotframework.org/
    ${url3}=  get location
    log to console  ${url3}