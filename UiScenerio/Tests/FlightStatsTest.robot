*** Settings ***
Documentation       Test suite for Flight Status verification.
Resource            ../Resources/PageObjects/NavigationPage.robot
Resource            ../Resources/PageObjects/FlightStatusPage.robot
Resource            ../Resources/Variables.robot
Suite Setup         Open Browser To Target Page
Suite Teardown      Close Browser

*** Test Cases ***

Launch and Navigate Test    
    Handle Popup If Visible
    Wait For Main Element

Fill Serarch Form
    ${length}=    Get Length    ${DATA_CITIES}
    FOR    ${index}    IN RANGE    0    ${length}

        ${FLIGHT_BUTTONS}=    Get From List    ${FLIGHT_BUTTON}    ${index}
        ${FLIGHT_SEARCHBOXS}=    Get From List    ${FLIGHT_SEARCHBOX}    ${index}
        ${CITIESS}=    Get From List    ${DATA_CITIES}    ${index}
        ${DATA_TESTS}=    Get From List    ${DATA_TEST}    ${index}

        Select Search Cities    ${FLIGHT_BUTTONS}  ${FLIGHT_SEARCHBOXS}  ${CITIESS}  ${DATA_TESTS}
    END

Search and Fill DatePicker
    Select Date in DatePicker
    Search Ticket

Count Flight Card
    Count And Log Flight Results
    