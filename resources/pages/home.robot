*** Settings ***
Resource  ../main.robot

*** Variables ***
${TUTORIALS_DROPDOWN}    //a[@id='navbtn_tutorials']
${LEARN_HOW_TO_LINK}     //a[contains (@data-name, 'howto')]
${LEARN_COLORS_LINK}     //a[contains (@data-name, 'colors')]
${LEARN_HTML_LINK}       //a[contains (@data-name, 'html')]


*** Keywords ***
Dado que o usuário esteja no site da w3schools
    Element Should Be Visible  ${TUTORIALS_DROPDOWN}
E navegue para o menu Tutorials -> Learn How To
    Click Element    ${TUTORIALS_DROPDOWN}
    Wait Until Element Is Visible    ${LEARN_HOW_TO_LINK}
    Click Element    ${LEARN_HOW_TO_LINK}
E navegue para o menu Tutorials -> Learn HTML
    Click Element    ${TUTORIALS_DROPDOWN}
    Wait Until Element Is Visible    ${LEARN_HTML_LINK}
    Click Element    ${LEARN_HTML_LINK}
E navegue para o menu Tutorials -> Learn Colors
    Click Element    ${TUTORIALS_DROPDOWN}
    Wait Until Element Is Visible    ${LEARN_COLORS_LINK}
    Click Element    ${LEARN_COLORS_LINK}

