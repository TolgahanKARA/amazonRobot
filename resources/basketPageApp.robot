*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Resource    ./pageobjects/basketPage.robot

*** Keywords ***
checkBasket
    basketPage.delete