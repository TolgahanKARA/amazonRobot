*** Settings ***
Library     SeleniumLibrary
Library    Collections

Resource    ./utils.robot
Variables   ../../config/amazon.py

*** Variables ***
${cargoShiping}     id=p_n_free_shipping_eligible-title
${result}       css=.a-size-medium-plu.a-color-base.a-text-normal
${link}     css=.a-section.a-spacing-small.puis-padding-left-small.puis-padding-right-small

*** Keywords ***
isProductPage
    elementVisiable    ${cargoShiping}
#    Set Focus To Element    ${result}
#    Element Text Should Be    ${result}    SONUÇLAR

choiceProduct
    @{webElements}  Get WebElements    ${link}
    Log List    ${webElements}
    click    ${webElements}[1]

