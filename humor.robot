*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir navegador e acessar a feedz
    Open Browser    url=https://app.feedz.com.br/    browser=Chrome
    Maximize Browser Window

inserir email e senha
    Input Text    id:login_email    jacksonsantos@almavivasolutions.com.br
    Input Text    id:passInput    JSdS210455$#

apertar o botão entrar
    Click Button    id:enter-login
    
selecionar o humor escolhido
    Set Selenium Page Load Timeout    100s
    Wait Until Element Is Visible    xpath=//html/body/main/div/div/div[4]/div[1]/form/div[1]/div/label[5]/img
    Click Element    xpath=//html/body/main/div/div/div[4]/div[1]/form/div[1]/div/label[5]/img
    
submeter o botao enviar
    Click Element    id:fdz-btn-send-mood    
    Sleep    1s

*** Test Cases ***
Entrar na pagina da Feedz e acessar minha conta
    Abrir navegador e acessar a feedz
    Set Selenium Speed    1 seconds
    inserir email e senha
    apertar o botão entrar
    selecionar o humor escolhido
    submeter o botao enviar