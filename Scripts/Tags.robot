*** Settings ***
Documentation     Tags in Robot Framework

*** Variables ***

*** Test Cases ***
Test Case 1
    [Tags]    Smoke
    Log To Console    This is test case 1

Test Case 2
    [Tags]    Regression
    Log    This is test case 2

Test Case 3
    [Tags]    Regression
    Log    This is test case 3

Test Case 4
    [Tags]    Smoke
    Log    This is test case 4

test Case 5
    [Tags]    Sanity
    Log    This is test case 5

test Case 6
    [Tags]    Shaily
    Log    This is test case 5

*** Keywords ***