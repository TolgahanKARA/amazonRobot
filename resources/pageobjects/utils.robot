*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary
 #Variables   ../../config/amazon.py

*** Variables ***
#${WTEXT}="SONUÇLAR"

*** Keywords ***
click
    [Arguments]     ${SELECTOR}
    Wait Until Page Contains Element    ${SELECTOR}
    Click Element    ${SELECTOR}

elementNotVisiable
    [Arguments]     ${SELECTOR}
    Wait Until Element Is Not Visible   ${SELECTOR}

isEnable
    [Arguments]     ${SELECTOR}
    Wait Until Element Is Enabled   ${SELECTOR}

elementVisiable
    [Arguments]     ${SELECTOR}
    Wait Until Element Is Visible   ${SELECTOR}

clear
    [Arguments]     ${SELECTOR}
    Clear Element Text     ${SELECTOR}

isCheckbox
    [Arguments]     ${SELECTOR}
    Checkbox Should Be Selected    ${SELECTOR}

#isText
#    [Arguments]     ${SELECTOR}
#    Element Text Should Be    ${SELECTOR    ${WTEXT}