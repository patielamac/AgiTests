# AgiTests
Validação do campo de pesquisa do blog com Robot Framework e SeleniumLibrary

# Web testing com Robot Framework e SeleniumLibrary

`Robot Framework` é um framework de automação de testes de código aberto e
SeleniumLibrary é uma das muitas bibliotecas de teste que podem ser usadas com ele.

# Test cases

o arquivo Agibank/agi_tests.robot contém a suite de testes incluindo os seguintes cenários:

Caso 1 - Compreende em fazer uma busca simples com palavra chave pertinente ao tema do blog,com as seguintes ações:
    - abre navegador
    - localiza o campo de pesquisa
    - insere texto para pesquisa
    - gera pesquisa
    - print do resultado
    - fecha navegador

Caso 2 - Compreende em fazer uma busca em looping com palavras de uma lista, onde serão realizadas buscas (com as palavras da lista) até finalizar o teste.
    - abre navegador
    - localiza o campo de pesquisa
    - insere texto  para pesquisa
    - gera pesquisa
    - print do resultado
    - repete até finalizar a lista com texto de pesquisa
    


# Instalação
-------------

Uma dependência para executar os testes é ter o `Robot Framework` e
o `SeleniumLibrary` instalado e eles, por sua vez, exigem Python.
As instruções de instalação do Robot Framework cobrem ambas instalações do Robot e do Python,
A `SeleniumLibrary` tem suas próprias instruções de instalação.

Deverá ser realizado uma atualização do Chrome Driver
https://googlechromelabs.github.io/chrome-for-testing/

Na prática é mais fácil instalar o Robot Framework e SeleniumLibrary
junto com suas dependências usando o `pip package manager`.
Depois de instalar o pip, tudo que você precisa fazer é executar
estes comandos::

    pip install -r requirements.txt

https://github.com/robotframework/robotframework/blob/master/INSTALL.rst
https://github.com/robotframework/SeleniumLibrary#installation

# Running tests

Os testes estão localizados na pasta Agibank, você pode executar-los com o comando `robot`.

    robot agi_tests.robot

# Usando browsers diferentes

O browser usado é controlado pela variável `${BROWSER}` definida em resource.robot
O Chrome é usado por default, mas você pode usar outros como o exemplo abaixo:

    robot --variable BROWSER:Chrome agi_tests.robot
    robot --variable BROWSER:Firefox agi_tests.robot

Consulte a documentação do SeleniumLibrary para verificar os browsers suportados.

Robot Framework: http://robotframework.org

SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary

Python: http://python.org

pip: http://pip-installer.org

Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide

# Checando log
Após execução dos testes (Caso 1 e Caso 2) será gerado um arquivo de relatório (report.html) e um arquivo de log (log.html).
No arquivo de log você poderá expandir os nós checando o resultado de cada etapa do teste, os dois testes contém screenshots do resultado da tela de pesquisa. Os mesmos prints também ficarão disponíveis na pasta dos logs.
