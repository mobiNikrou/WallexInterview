*** Settings ***
Documentation    Test suite for Flight Status verification.
Resource         ../Resources/PageObjects/NavigationPage.robot
Test Setup       Open Browser To Target Page
Test Teardown    Close Browser

*** Test Cases ***
Scenario 1 - Launch and Navigate Test
    [Documentation]    Verifies that the application launches successfully and navigates to the main page.
    [Tags]    Smoke    Launch
    
    Log To Console    Successfully navigated to FlyToday website.
    Title Should Be    بلیط هواپیما - رزرو و خرید آنلاین بلیط هواپیما ارزان | فلای تودی