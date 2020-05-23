*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py
Library  ../ExternalKeywords/Read_Data_From_xlsx.py

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Opera

*** Keywords ***
Start Browser and Maximize
    [Documentation]  Start Browser then Maximize Window
    open browser  ${URL}  ${Browser}
    maximize browser window

Start Browser and Maximize with arguments
    [Documentation]  Start Specified Browser and URL then Maximize Window
    [Arguments]  ${InputURL}  ${InputBrowser}
    open browser  ${InputURL}  ${InputBrowser}
    maximize browser window

Start Browser and Maximize with arguments and return title
    [Documentation]  Start Specified Browser and URL then Maximize Window and return the title
    [Timeout]  20s
    [Arguments]  ${InputURL}  ${InputBrowser}
    open browser  ${InputURL}  ${InputBrowser}
    maximize browser window
    ${Title}=  get title
    [return]  ${Title}

Close Browser Window
    ${Title}=  get title
    log  ${Title}
    Close Browser

Before Each Test Suite
    Log  Before each test suite

After Each Test Suite
    Log  After each test suite

Create Folder At Runtime
    create_folder
    create_sub_folder
    Log  "Task done successfully"

Create this Folder and Subfolder At Runtime
    [Arguments]  ${foldername}  ${subfoldername}
    create_this_folder  ${foldername}
    create_this_sub_folder  ${foldername}  ${subfoldername}
    Log  "Task done successfully"

Concatenante username and password
    [Arguments]  ${username}  ${password}
    ${ResultVal}=  concatenate_two_values  ${username}  ${password}
    Log  ${ResultVal}

Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxrow}=  fetch_number_of_rows  ${sheetname}
    [Return]  ${maxrow}

Read Excel Data of Cell
    [Arguments]   ${sheetname}  ${row}  ${column}
    ${celldata}=  fetch_cell_data  ${sheetname}  ${row}  ${column}
    [Return]  ${celldata}