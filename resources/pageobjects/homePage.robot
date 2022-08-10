*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary
Resource    ./utils.robot
Variables   ../../config/amazon.py

*** Variables ***
${cookie}   id=sp-cc-accept
${singInButton}     id=nav-link-accountList
${mainNav}     id=nav-main
${checkHome}    id=glow-ingress-block
${search}     id=twotabsearchtextbox
${searchButton}     id=nav-search-submit-button

*** Keywords ***
go
    click    ${cookie}
    elementNotVisiable    ${cookie}
    isEnable    ${mainNav}
    click    ${singInButton}

isHomePage
    elementVisiable    ${checkHome}
    
searchItem
    click    ${search}
    Input Text    ${search}    ${PRODUCT}
    click    ${searchButton}