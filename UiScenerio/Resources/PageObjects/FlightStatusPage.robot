*** Keywords ***

Count And Log Flight Results
    [Documentation]    Counts the number of visible flight result cards and logs the total.
    
    Wait Until Element Is Visible    ${FLIGHT_RESULT_CARDS}    timeout=15s
    
    @{FLIGHT_ELEMENTS}=    Get WebElements    ${FLIGHT_RESULT_CARDS}
    
    ${TOTAL_FLIGHTS}=    Get Length    ${FLIGHT_ELEMENTS} 
    
    Log To Console    Total active flight cards found: ${TOTAL_FLIGHTS}
    Log    Total active flight cards found: ${TOTAL_FLIGHTS}
    
    Set Global Variable    ${FINAL_FLIGHT_COUNT}    ${TOTAL_FLIGHTS}