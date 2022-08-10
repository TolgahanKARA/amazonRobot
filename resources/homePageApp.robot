*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library         DebugLibrary
Resource    ./pageobjects/homePage.robot

*** Variables ***


*** Keywords ***
gotosing
    homePage.go

isHomePage
    homePage.isHomePage

searchItem
    homePage.searchItem