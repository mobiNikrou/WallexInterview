*** Settings ***
Documentation    Test suite for Flight Status verification.
Resource         ../Resources/PageObjects/NavigationPage.robot
Resource         ../Resources/PageObjects/FlightStatusPage.robot
Test Setup       Open Browser To Target Page
Test Teardown    Close Browser

*** Test Cases ***
Scenario 1 - Launch and Navigate Test
    [Documentation]    Verifies that the application launches successfully and navigates to the main page.
    [Tags]    Smoke    Launch
    
    Log To Console    Successfully navigated to FlyToday website.
    Handle Popup If Visible
    Wait For Main Element
    Fill Origin and des and date Field
    Sleep  8s
    Click Element    xpath://body 
    Sleep  5s
    Count And Log Flight Results
    