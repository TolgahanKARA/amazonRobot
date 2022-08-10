*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary

*** Variables ***
${URL}  https://www.amazon.com.tr/
${BROWSER}  chrome

*** Keywords ***
create session
    Set Selenium Speed  0.5 seconds
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window

close session
    Close Browser