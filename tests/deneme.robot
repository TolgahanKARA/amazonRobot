*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library     DebugLibrary
Resource    ../resources/utilsApp.robot
Resource    ../resources/homePageApp.robot
Resource    ../resources/singInPageApp.robot
Resource    ../resources/singInPagePassApp.robot
Resource    ../resources/allProductPageApp.robot
Resource    ../resources/productPageApp.robot
Resource    ../resources/basketPageApp.robot

Test Setup  utilsApp.create session
Test Teardown   utilsApp.close session

*** Test Cases ***
kontrol
    homePageApp.gotosing
    singInPageApp.enter user
    singInPagePassApp.enter password
    homePageApp.isHomePage
    homePageApp.searchItem
    allProductPageApp.deneme
    productPageApp.go Basket
    basketPageApp.checkBasket