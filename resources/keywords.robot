*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}           https://www.saucedemo.com/
${BROWSER}       chrome
${USER_VALIDO}   standard_user
${PASSWORD}      secret_sauce

*** Keywords ***
Dado que estou na página de login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Swag Labs

Quando insiro credenciais válidas
    Input Text      id:user-name    ${USER_VALIDO}
    Input Text      id:password     ${PASSWORD}
    Click Button    id:login-button

Então devo ser redirecionado para a página de produtos
    Wait Until Element Is Visible    class:title
    Element Text Should Be           class:title    Products
    Close Browser

Quando insiro uma palavra-passe inválida
    Input Text      id:user-name    ${USER_VALIDO}
    Input Text      id:password     senha_errada
    Click Button    id:login-button

Então devo ver uma mensagem de erro
    Wait Until Element Is Visible    css:[data-test="error"]
    Element Should Contain           css:[data-test="error"]    Epic sadface
    Close Browser