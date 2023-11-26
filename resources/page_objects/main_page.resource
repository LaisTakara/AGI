*** Settings ***
Resource    ../configs/tst_config.resource

*** Variables ***
${LUPA_PESQUISA}                 //*[@id="search-open"]
${BARRA_PESQUISA}                //*[@id="masthead"]/div[1]/div[2]/form/label/input
${BOTA_PESQUISAR}                //*[@id="masthead"]/div[1]/div[2]/form/input
${PESQUISA_RESULTADO_EXISTENTE}  Nossos avanços em testes de transferências interbancárias via Drex
${RESULTADO_EXISTENTE}           //a[contains(@href, 'avancos-em-testes-de-transferencias-interbancarias-via-drex')]
${RESULTADO_NAO_EXISTENTE}       //p[contains(text(), 'Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes.')]

