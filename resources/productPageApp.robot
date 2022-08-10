*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary
Resource    ./pageobjects/productPage.robot

*** Keywords ***
go Basket
    productPage.isPrice
    productPage.addBasket
    productPage.goToBasket
