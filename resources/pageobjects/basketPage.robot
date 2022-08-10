*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary
Resource    ./utils.robot

*** Variables ***
${deleteButton}     css=.a-declarative > input[ value='Sil' ]
${deneme}   xpath=/html//div[@id='sc-active-cart']//h1[1]

*** Keywords ***
delete
    Get Text    ${deneme}
    click    ${deleteButton}
