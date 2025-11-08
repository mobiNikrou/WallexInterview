*** Settings ***
Documentation    Global variables for the project.

*** Variables ***
${FIRFOX_DRIVER_PATH}               C:/Users/m.nikrou/Desktop/WallexLiveCoding/UiScenerio/Resources/Driver/geckodriver.exe
${FIREFOX_APP_PATH}                 C:/Program Files/Mozilla Firefox107/firefox.exe
${URL}                              https://www.flytoday.ir/
${MAX_TIMEOUT}                      15s
${MID_TIMEOUT}                      10s
${MIN_TIMEOUT}                      5s
${ORIGIN_FIELD}                     css=[data-test="flight-origin"]
${DESTINATION_FIELD}                css=[data-test="flight-destination"]
${DATE_FIELD}                       css=[data-test="start-date-field"]
${SEARCH_BUTTON}                    xpath://button[contains(., 'جستجو')]    
${FLIGHT_RESULT_CARDS}              xpath://div[contains(@class, 'rounded-2xl') and contains(@class, 'border-gray-300') and contains(@class, 'cursor-pointer')]    
${TOUR_GUIDE_OVERLAY}               xpath://div[contains(@class, 'tourguide')] | //div[contains(@class, 'coachmark')] | //div[@role='dialog']
${PAGE_LOADINNG}                    بلیط هواپیما
${SEARCH_BAR}                       id:search-bar
${WEB_PUSH}                         id:webpush-onsite
${WEB_PUSH_DENY}                    id:deny
${FLIGHT_ORIGIN_BUTTON}             //button[@data-test='flight-origin']
${FLIGHT_ORIGIN_SEARCHBOX}          //input[@placeholder='جستجو مبدا']  
${FLIGHT_DESTINATION_BUTTON}        //button[@data-test='flight-destination']
${FLIGHT_DESTINATION_SEARCHBOX}     //input[@placeholder='جستجو مقصد']   
${CITIES1}                          تهران
${CITIES2}                          مشهد

@{FLIGHT_BUTTON}            //button[@data-test='flight-origin']    //button[@data-test='flight-destination']
@{FLIGHT_SEARCHBOX}         //input[@placeholder='جستجو مبدا']  //input[@placeholder='جستجو مقصد']  
@{DATA_CITIES}              تهران   مشهد
@{DATA_TEST}                THR  MHD


