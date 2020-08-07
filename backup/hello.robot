*** Settings ***


Library    hello.py


*** Test Cases ***

Deve retornar a mensagem de boas vindas
    ${resultado}=      Hello Robot     Gisele Rosa
    Should Be Equal    ${resultado}    Olá, Bem vindo ao curso de Robot Mobile Gisele Rosa.