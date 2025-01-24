*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        edge 
${URL}            https://www.letskodeit.com/practice

*** Test Cases ***
Test Radio button
    Open Browser    ${URL}    ${BROWSER}
    Sleep    3 
    Radio Button Should Not Be Selected    cars    #nothing is selected
    Log To Console    "None of the radio button is selected"    #To print

    Select Radio Button    cars    bmw    #Select radio button 1 with valure bmw
    Sleep    2
    Radio Button Should Be Set To    cars    bmw    #BMW radio button 1 is selected
    Log To Console    "BMW radio button is selected"

    Select Radio Button    cars    benz    #Select radio button 2 with valure benz
    Sleep    2
    Radio Button Should Be Set To    cars    benz    #Benz radio button 2 is selected
    Log To Console    "Benz radio button is selected"

    Select Radio Button    cars    honda    #Select radio button 3 with valure honda
    Sleep    2
    Radio Button Should Be Set To    cars    honda    #Honda radio button 3 is selected
    Log To Console    Honda radio button is selected

    Close Browser

Test Checkbox button

    Open Browser    ${URL}    ${BROWSER}
    Sleep    3
    Checkbox Should Not Be Selected    cars
    Log To Console    None of the checkbox is selected
    
    Select Checkbox    id:bmwcheck
    Sleep    2

    Checkbox Should Be Selected    id:bmwcheck
    Log To Console    BMW checkbox is selected

    Unselect Checkbox    id:bmwcheck
    Log To Console    BMW checkbox is unchecked
    