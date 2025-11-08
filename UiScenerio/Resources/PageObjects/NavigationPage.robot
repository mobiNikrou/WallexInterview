*** Settings ***
Library  SeleniumLibrary
Library  DateTime
Library  String
Library  Collections
Library   ../Scripts/DateHelper.py
Resource  ../Variables.robot

*** Keywords ***
Open Browser To Target Page
    Create webdriver  Firefox  firefox_binary=C:/Program Files/Mozilla Firefox107/firefox.exe  executable_path=C:/Users/m.nikrou/Desktop/MyProject/Selenium/ArziSelProj/CoreSeleniumProject/Common/Drivers/geckodriver.exe
    Go To    ${URL}
    Maximize Browser Window
    Set Selenium Timeout    ${MAX_TIMEOUT}
    Wait Until Page Contains    ${PAGE_LOADINNG}

Wait For Main Element
    Wait Until Element Is Visible    ${SEARCH_BAR}   timeout=${MID_TIMEOUT}
    

Handle Popup If Visible
    ${IFRAME_LOCATOR}    Set Variable    ${WEB_PUSH}
    ${iframe_exists}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${IFRAME_LOCATOR}    timeout=${MIN_TIMEOUT}
    
    Run Keyword If    ${iframe_exists}
    ...    Close IFrame Popup

Close IFrame Popup
    ${IFRAME_LOCATOR}    Set Variable    ${WEB_PUSH}
    ${POPUP_DENY_BUTTON}    Set Variable    ${WEB_PUSH_DENY}
    Select Frame    ${IFRAME_LOCATOR}
    Click Element    ${POPUP_DENY_BUTTON}
    Unselect Frame
    Sleep    2s

# Select Origin City
#     Wait Until Element Is Visible    ${FLIGHT_ORIGIN_BUTTON}    timeout=${MID_TIMEOUT}
#     Click Element    ${FLIGHT_ORIGIN_BUTTON}
#     Wait Until Element Is Visible    ${FLIGHT_ORIGIN_SEARCHBOX}    timeout=${MIN_TIMEOUT}
#     Input Text    ${FLIGHT_ORIGIN_SEARCHBOX}   ${CITIES1}
#     Wait Until Element Is Visible    //*[@data-test="thr"]    timeout=${MIN_TIMEOUT}
#     Click Element    //*[@data-test="thr"]
#     Wait Until Page Contains    ${CITIES1}

# Select Destination City
#     Wait Until Element Is Visible    ${FLIGHT_DESTINATION_BUTTON}    timeout=${MID_TIMEOUT}
#     Click Element    ${FLIGHT_DESTINATION_BUTTON}
#     Wait Until Element Is Visible    ${FLIGHT_DESTINATION_SEARCHBOX}    timeout=${MIN_TIMEOUT}
#     Input Text    ${FLIGHT_DESTINATION_SEARCHBOX}    ${CITIES2}
#     Wait Until Element Is Visible    //*[@data-test="buz"]    timeout=${MIN_TIMEOUT}
#     Click Element    //*[@data-test="buz"]
#     Wait Until Page Contains    ${CITIES2}

Select Search Cities
    [Arguments]  ${FLIGHT_BUTTON}  ${FLIGHT_SEARCHBOX}  ${CITIES}  ${DATA_TEST}


    Wait Until Element Is Visible    ${FLIGHT_BUTTON}    timeout=${MID_TIMEOUT}
    Click Element    ${FLIGHT_BUTTON}
    Wait Until Element Is Visible    ${FLIGHT_SEARCHBOX}    timeout=${MIN_TIMEOUT}
    Input Text    ${FLIGHT_SEARCHBOX}    ${CITIES}
    Wait Until Element Is Visible    //*[@data-test="${DATA_TEST}"]   timeout=${MIN_TIMEOUT}
    Click Element   //*[@data-test="${DATA_TEST}"]
    Wait Until Page Contains    ${CITIES}

Select Date in DatePicker
    # ${TOMORROW_DAY}=    Get Tomorrow Day Number
    Wait Until Element Is Visible    //button[@data-test='start-date-field']    timeout=${MID_TIMEOUT}
    Click Element    //button[@data-test='start-date-field']
    ${TOMORROW_DAY_XPATH}=    Set Variable    //button[.//span[text()='18']]
    Wait Until Element Is Visible    ${TOMORROW_DAY_XPATH}    timeout=${MID_TIMEOUT}
    Sleep  1s
    Click Element    ${TOMORROW_DAY_XPATH}
    Wait Until Element Is Visible    //button[text()='تایید']    timeout=${MIN_TIMEOUT}
    Click Element    //button[text()='تایید']

Search Ticket
    Wait Until Element Is Enabled  //button[@data-test='flightSearchBtn']
    Click Element  //button[@data-test='flightSearchBtn']


Close Browser
    [Documentation]    Closes all opened browser windows.
    Close All Browsers