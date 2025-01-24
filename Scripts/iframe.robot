*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://demo.automationtesting.in/Frames.html

*** Test Cases ***
Iframe

    Open Browser    ${URL}    ${BROWSER}
    Sleep           3 seconds

    Select Frame    id:singleframe
    Input Text    //input[@type='text']    Testing
    Sleep    5
    Unselect Frame

    Close Browser
    