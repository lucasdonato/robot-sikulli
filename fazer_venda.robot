*** Settings ***
Documentation    Realizar venda

Library           SikuliLibrary


Suite Setup        Carrega os elementos
Suite Teardown     Stop Remote Server

Test Teardown      Cai fora

*** Variables ***
#As imagens da pasta img devem estar de acordo com a interface do seu PC!!!! Tire os prints necessários!
${ELEMENTS}      ${CURDIR}\\elements
${FIXTURES}       ${CURDIR}\\fixtures

*** Test Cases ***
Café da manha
    Click   start.png
    Click   menu_vendas.png
    
    Press Special Key   F3
    Double Click	    item_pao_frances.png
    Input Text          campo_quantidade.png    5
    Press Special Key   ENTER

    Press Special Key   F3
    Double Click	    item_leite.png
    Input Text          campo_quantidade.png    1
    Press Special Key   ENTER

    Exists   expect_value.png     5

    Capture Screen
    
*** Keywords ***
Carrega os elementos
    Add Image Path    ${ELEMENTS}
    Add Image Path    ${FIXTURES}

Cai fora
    Close Application       BugBakery