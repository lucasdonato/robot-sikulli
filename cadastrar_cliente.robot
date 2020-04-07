*** Settings ***
Documentation     Sikuli Library Demo

Library           SikuliLibrary


Suite Setup        Carrega os elementos
Suite Teardown     Stop Remote Server

Test Teardown      Cai fora

*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!!!! Tire os prints necessários!
${IMAGE_DIR}      ${CURDIR}\\elements

*** Test Cases ***
Cadastro de Cliente
    Click   start.png
    Click   menu_cadastro.png
    Click   submenu_cliente.png
    
    Input Text      campo_nome.png      Fernando Papito
    Input Text      campo_cpf.png       00000014141
    Click           bt_cadastrar.png

    # Sleep   5
    Exists   msgbox_cliente_cad_sucesso.png     5
    Capture Screen
    
*** Keywords ***
Carrega os elementos
    Add Image Path    ${IMAGE_DIR}

Cai fora
    Close Application       BugBakery