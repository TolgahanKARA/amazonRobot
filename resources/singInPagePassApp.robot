*** Settings ***
Library     SeleniumLibrary
Resource    ./pageobjects/singInPagePass.robot

*** Keywords ***
enter password
    singInPagePass.login pass
    singInPagePass.click go on