<<<<<<< HEAD
![swagger](https://serverest.dev/#/)

## Sobre

Repositório do treinamento: Testes contínuos em Robot Framework cadastro de usuários
=======
![poster](https://github.com/Ismael198/robot-actions)

## Sobre

Repositório: Testes contínuos em Robot Framework no Github Actions
>>>>>>> 8db1805ab222fad661b007729646cf881f97f7ea

## Techs
- Robot Framework
- Browser (Playwright)


## Como executar

1. Clonar o repositório, instalar as dependências
```
pip install -r requirements.txt
<<<<<<< HEAD
depois
rfbrowser init
=======

e rodar o comando: 

rfbrowser init

```
>>>>>>> 8db1805ab222fad661b007729646cf881f97f7ea

comando rodar o projeto de tests de api:

no diretório: robot-api-cadastroUser
robot -d ./logs -v IS_HEADLESS:True tests 


no diretório tests
robot -d ./logs test_api_cadastroUser.robot

2. Executar report com Allure
```
1 - robot --listener allure_robotframework -d ./logs test_api_cadastroUser.robot

2 - allure serve output/allure
```

4. Executar report com Allure
```
1 - robot --listener allure_robotframework -d ./logs tests

2 - allure serve output/allure
```







