*** Settings ***
Library     SeleniumLibrary
Resource    ./pageobjects/singInPage.robot

*** Keywords ***
enter user
    singInPage.input account
    singInPage.click go on