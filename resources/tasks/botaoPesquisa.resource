*** Settings ***
Resource  configs/tst_config.resource
Resource  page_objects/main_page.resource

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Set Window Size   3440  1440
    # Maximize Browser Window
    # Set Selenium Speed    ${DELAY}

Fechar o navegador
    Close Browser
    # Set Selenium Speed    ${DELAY}

Dado que estou na página principal da AGI
    Go To  url=${URL}

Quando clico no botão de lupa
    Wait Until Element Is Visible    ${LUPA_PESQUISA}
    Click Button    ${LUPA_PESQUISA}

E pesquiso pelo item
    Wait Until Element Is Enabled   ${BARRA_PESQUISA}
    Input Text  ${BARRA_PESQUISA}  'Nossos avanços em testes de transferências interbancárias via Drex'
    Click Button  ${BOTA_PESQUISAR}

E pesquiso pelo item não existente
    Wait Until Element Is Enabled   ${BARRA_PESQUISA}
    Input Text  ${BARRA_PESQUISA}  'aldsalsdhakjsda'
    Click Button  ${BOTA_PESQUISAR}

Então sou redirecionado com o resultado
    Wait Until Element Is Visible   ${RESULTADO_EXISTENTE}
    
Então sou redirecionado com o nenhum resultado 
    Wait Until Element Is Visible   ${RESULTADO_NAO_EXISTENTE}
   