*** Settings ***
Documentation   Campo de Pesquisa - Blog AGI
Resource    agi.resource


*** Test Cases ***

Caso 01: Acessar portal e gerar pesquisa simples
    Acessar portal e gerar pesquisa simples
    #objetivo é realizar uma pesquisa simples com uma palavra chave relacionada ao tema do blog passo a passo
    # Abrir navegador
    # Acessar blog
    # clicar no campo pesquisa
    # escrever uma palavra chave coerente ao tema do blog
    # dar "enter"
    # obter resultado da pesquisa em tela
    # printar resultado  


Caso 02: Acessar portal e gerar várias pesquisas em fila
    Acessar portal e gerar várias pesquisas em fila
    #objetivo é realizar várias pesquisas com um array de palavras chave relacionada ao tema do blog onde o passo a passo
    # Abrir navegador
    # Acessar blog
    # clicar no campo pesquisa
    # escrever uma palavra chave coerente ao tema do blog por vez seguindo a ordem da listagem pré-definida
    # dar "enter"
    # obter resultado da pesquisa em tela
    # printar resultado
    # refazer o processo até utilizar todas as palavras da lista
    # por em looping o processo 4x para se certificar do sucesso das buscas