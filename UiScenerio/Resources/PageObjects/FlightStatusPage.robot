*** Keywords ***

Count And Log Flight Results
    
    Wait Until Page Contains Element  css:[id^='itinerary']    timeout=15s
    
    ${CARD_COUNT}=    Get Element Count    //*[starts-with(@id, 'itinerary')]

    Log To Console    .
    Log To Console    ========================================
    Log To Console    Number of flight card is : ${CARD_COUNT}
    Log To Console    ========================================
    