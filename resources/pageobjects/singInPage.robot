*** Settings ***
Library     SeleniumLibrary
Resource    ./utils.robot

*** Variables ***
${amazonLogo}   class=a-icon-logo
${emailText}    id=ap_email
${createAmazonAccount}  id=createAccountSubmit
${user}     ujr08169@jeoce.com
${continue}     id=continue

*** Keywords ***
input account
    click    ${emailText}
    isEnable    ${createAmazonAccount}
    elementVisiable    ${amazonLogo}
    Input Text    ${emailText}    ${user}

click go on
    isEnable    ${continue}
    click    ${continue}