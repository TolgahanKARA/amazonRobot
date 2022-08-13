*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library    Collections
Variables   ../../config/amazon.py
Resource    ./utils.robot

*** Variables ***
${buyButton}    id=buy-now-button
${price}    id=corePriceDisplay_desktop_feature_div
${addBasketButton}  id=add-to-cart-button
${goBasktetButton}  id=sw-gtc
${productPagePrice}     css=div>span>.a-offscreen

*** Keywords ***
isPrice
    elementVisiable    ${price}
    isEnable    ${buyButton}

addBasket
    click    ${addBasketButton}

goToBasket
    click    ${goBasktetButton}
    
price
    @{price}    Get WebElements    ${productPagePrice}
    Log List    ${price}
    ${priceV}   Get Text    ${price}[0]