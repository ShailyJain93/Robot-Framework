*** Settings ***
Library           SeleniumLibrary
Library    Support.py

Variables    ../Locators/Katalon.py   #For importing the Locator file

*** Variables ***
${BROWSER}        chrome
#${URL}            https://katalon.com/

*** Test Cases ***
KatalonStudio with Page Object Concept

    ${URL}=    Support.Read Xml    applicationurl

    Open Browser    ${URL}    ${BROWSER}
    Sleep           3 seconds

    Maximize Browser Window
    Element Should Be Visible    ${katalon_logo}
    Log    Logo is Visible


    Close Browser