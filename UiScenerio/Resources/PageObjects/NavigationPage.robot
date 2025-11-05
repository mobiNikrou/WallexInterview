*** Settings ***
Documentation  Keywords for managing (Setup/Teardown).
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Resource  ../Variables.robot

*** Keywords ***
Open Browser To Target Page
    [Documentation]    Opens the specified browser and navigates to the target URL.
    Create webdriver  Firefox  firefox_binary=C:/Program Files/Mozilla Firefox107/firefox.exe  executable_path=C:/Users/m.nikrou/Desktop/MyProject/Selenium/ArziSelProj/CoreSeleniumProject/Common/Drivers/geckodriver.exe
    Go To    ${URL}
    # Open Browser    ${URL}    chrome
    Maximize Browser Window
    Set Selenium Timeout    ${TIMEOUT}
    Wait Until Page Contains    بلیط هواپیما

Wait For Main Element
    [Documentation]    Waits until a critical and stable element on the page is visible.
    Wait Until Element Is Visible    id:search-bar   timeout=${TIMEOUT}
    

Handle Popup If Visible
    [Documentation]    Checks if a popup is visible and closes it using the defined locator.
    ${IFRAME_LOCATOR}    Set Variable    id:webpush-onsite
    ${POPUP_DENY_BUTTON}    Set Variable    id:deny
    ${iframe_exists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${IFRAME_LOCATOR}    timeout=5s
    
    Run Keyword If    ${iframe_exists}
    ...    Close IFrame Popup
    ...    ELSE
    ...    Log To Console    No webpush IFrame detected.

Close IFrame Popup
    [Documentation]    Switches to the IFrame, clicks deny, and returns to main content.
    ${IFRAME_LOCATOR}    Set Variable    id:webpush-onsite
    ${POPUP_DENY_BUTTON}    Set Variable    id:deny
    Select Frame    ${IFRAME_LOCATOR}
    Click Element    ${POPUP_DENY_BUTTON}
    Unselect Frame
    Sleep    2s    

Fill Origin and des and date Field
    [Documentation]    Selects a random city as origin and fills the flight origin field.
        
    Click Element    ${ORIGIN_FIELD}
    
    Click Element    //*[@id="search-bar"]/div/div/section/div[2]/div/div[2]/div/div[1]/div/div[1]/div/div/div[2]/div[1]

    Click Element    ${DESTINATION_FIELD}

    Click Element    //*[@id="search-bar"]/div/div/section/div[2]/div/div[2]/div/div[1]/div/div[2]/div/div/div[2]/div[3]

    Click Element    ${DATE_FIELD}

    Click Element    //*[@id="search-bar"]/div/div/section/div[2]/div/div[2]/div/div[2]/div[2]/div/div/div[2]/div[1]/div/div[2]/button[20]/div[1]/span

    Click Element    //*[@id="search-bar"]/div/div/section/div[2]/div/div[2]/div/div[2]/div[2]/div/footer/button

    
    
    Sleep   2s
    
    Click Button    ${SEARCH_BUTTON}
    
    Sleep   10s

Close Browser
    [Documentation]    Closes all opened browser windows.
    Close All Browsers