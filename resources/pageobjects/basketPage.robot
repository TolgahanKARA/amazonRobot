*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary
Resource    ./utils.robot
Resource    ./productPage.robot

*** Variables ***
${deleteButton}     css=.a-declarative > input[ value='Sil' ]
${deneme}   xpath=/html//div[@id='sc-active-cart']//h1[1]
${priceBasketPage}      css=.a-color-base.a-size-medium.a-text-bold.sc-price.sc-product-price.sc-white-space-nowrap

*** Keywords ***
delete
    Get Text    ${deneme}
    Builtin.Should Not Be Equal    ${priceBasketPage}    ${price}
    click    ${deleteButton}
