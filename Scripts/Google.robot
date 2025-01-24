*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.saucedemo.com/

*** Test Cases ***
Open Google
    Open Browser    ${URL}    ${BROWSER}
    Sleep           3 seconds
    Close Browser