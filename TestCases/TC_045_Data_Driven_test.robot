*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Ressources_TC.robot

*** Variables ***
${Browser}  Opera
${URL}  https://fr-fr.facebook.com

*** Test Cases ***
TC use json data
    Open Browser  ${URL}  ${Browser}
    ${row_nb}=  Read Number of Rows  Feuil1
    log to console  ${row_nb}
    ${data}=  Read Excel Data of Cell  Feuil1  1  1
    log to console  ${data}

    #Boucle pour essayer l'ensemble des couples login/password du fichier excel dans le portail web
    FOR  ${i}  IN RANGE  1  ${row_nb}+1
        ${username}=  Read Excel Data of Cell  Feuil1  ${i}  1
        ${password}=  Read Excel Data of Cell  Feuil1  ${i}  2
        input text  id:email  ${username}
        input text  id:pass  ${password}
        click element  id:loginbutton
        sleep  5s
    END



    Close Browser