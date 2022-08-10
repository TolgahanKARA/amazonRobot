*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Variables   ../../config/amazon.py
Resource    ./utils.robot

*** Variables ***
${buyButton}    id=buy-now-button
${price}    id=corePriceDisplay_desktop_feature_div
${addBasketButton}  id=add-to-cart-button
${goBasktetButton}  id=sw-gtc

*** Keywords ***
isPrice
    elementVisiable    ${price}
    isEnable    ${buyButton}

addBasket
    click    ${addBasketButton}

goToBasket
    click    ${goBasktetButton}