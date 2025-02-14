*** Settings ***
Library           RequestsLibrary
Library           String
Library           Collections



*** Variables ***
${URL_BASE}       https://serverest.dev/
${HEADERS}        accept=application/json    Content-Type=application/json

  

*** Keywords ***


Dado que eu tenha os dados de um novo usuário na ServeRest
    ${nome_aleatorio}    Generate Random String    length=6  chars=[LETTERS]
    ${nome_aleatorio}    Convert To Lower Case     ${nome_aleatorio}
    Set Test Variable    ${EMAIL_TESTE}    ${nome_aleatorio}@email.com
    Set Test Variable    ${NOME_TESTE}     Fulano_${nome_aleatorio}
    Log   Gerado usuário: Nome=${NOME_TESTE}, Email=${EMAIL_TESTE}

Quando eu cadastrar o usuário na base da ServeRest
    ${body}    Create Dictionary    nome=Ismael da Silva       email=${EMAIL_TESTE}    password=teste    administrador=true
    ${headers}  Create Dictionary   accept=application/json    Content-Type=application/json     
    Log    ${body} 
    
    
    Criando Sessão na API    
    ${resposta}    POST On Session    alias=API    url=usuarios    json=${body} 
    Log     ${resposta.json()} 
    Set Test Variable                 ${RESPOSTA}    ${resposta.json()} 

      
Criando Sessão na API
    ${headers}        Create Dictionary    accept=application/json       Content-Type=application/json
    Create Session    alias=API            url=https://serverest.dev/    headers= ${headers}

E o usuário deve ser cadastrado corretamente
    Log    ${RESPOSTA}
    
Então devo conseguir encontrar o usuário na base com o email
    ${RESPOSTA}    Create Dictionary    email=${EMAIL_TESTE}
    