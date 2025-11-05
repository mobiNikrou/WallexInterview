*** Settings ***
Documentation    Keywords for managing (Setup/Teardown).
Library          SeleniumLibrary
Resource         ../Variables.robot

*** Keywords ***
Open Browser To Target Page
    [Documentation]    Opens the specified browser and navigates to the target URL.
    Open Browser    ${URL}    Firefox
    Maximize Browser Window
    Go To    ${URL}
    Set Selenium Timeout    ${TIMEOUT}
    Wait Until Page Contains    بلیط هواپیما
    
Close Browser
    [Documentation]    Closes all opened browser windows.
    Close All Browsers