*** Settings ***
Library     SeleniumLibrary
Resource    ./utils.robot

*** Variables ***

${details}     id=remember_me_learn_more_link
${submit}       id=signInSubmit
${passText}     id=ap_password
${pass}     F?!UagY3L_nx5Dn

*** Keywords ***
login pass
    elementVisiable    ${details}
    click    ${submit}
    Input Text    ${passText}    ${pass}


click go on
    isEnable    ${submit}
    click    ${submit}