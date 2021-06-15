*** Settings ***
Documentation    Meu teste de variaveis

*** Variables ***
${MENSAGEM}    Hello World!
${NUMERO}    ${10}
&{PESSOA}    nome=Jeferson    sobrenome=Indejejczak    idade=25
${FRUTAS}    maçã    banana    limão

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem

Meu teste imprimindo um dicionario de PESSOA
    Logar no meu terminal uma PESSOA 

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma lista de frutas    

*** Keywords ***
Logar no meu terminal uma mensagem
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}    

Logar no meu terminal uma PESSOA
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${\n}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade} anos!     

Logar no meu terminal uma lista de frutas
    ${nova_fruta}    Set Variable    morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many    ${FRUTAS}
    Log To Console    ${nova_fruta}