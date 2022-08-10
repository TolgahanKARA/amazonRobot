*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary
Resource    ./pageobjects/allProductPage.robot

*** Variables ***


*** Keywords ***
deneme
    allProductPage.isProductPage
    allProductPage.choiceProduct