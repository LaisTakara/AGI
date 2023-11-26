*** Settings ***
Documentation    Essa suíte será testa a lupa do site https://blogdoagi.com.br/
Resource         ../resources/tasks/botaoPesquisa.resource
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***
Cenário 01 - Pesquisa dado existente
   [Documentation]    Este teste realiza uma pesquisa com um item disponivel no site
   [Tags]             pesquisa via lupa
   Dado que estou na página principal da AGI
   Quando clico no botão de lupa
   E pesquiso pelo item
   Então sou redirecionado com o resultado

Cenário 02 - Pesquisa dado não existente
   [Documentation]    Este teste realiza uma pesquisa com um item disponivel no site
   [Tags]             pesquisa via lupa
   Dado que estou na página principal da AGI
   Quando clico no botão de lupa
   E pesquiso pelo item não existente
   Então sou redirecionado com o nenhum resultado 
