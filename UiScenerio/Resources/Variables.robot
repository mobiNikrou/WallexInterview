*** Settings ***
Documentation    Global variables for the project.

*** Variables ***
${URL}           https://www.flytoday.ir/
${TIMEOUT}       10s
${CITIES1}  تهران
${CITIES2}  مشهد
${ORIGIN_FIELD}        css=[data-test="flight-origin"]
${DESTINATION_FIELD}   css=[data-test="flight-destination"]
${DATE_FIELD}          css=[data-test="start-date-field"]
${SEARCH_BUTTON}       xpath://button[contains(., 'جستجو')]    
${FLIGHT_RESULT_CARDS}    xpath://div[contains(@class, 'rounded-2xl') and contains(@class, 'border-gray-300') and contains(@class, 'cursor-pointer')]    
${TOUR_GUIDE_OVERLAY}     xpath://div[contains(@class, 'tourguide')] | //div[contains(@class, 'coachmark')] | //div[@role='dialog']