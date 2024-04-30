# AgiTests
Validação do campo de pesquisa do blog com Robot Framework e SeleniumLibrary

# Web testing com Robot Framework e SeleniumLibrary

`Robot Framework` é um framework de automação de testes de código aberto e
SeleniumLibrary é uma das muitas bibliotecas de teste que podem ser usadas com ele.

# Test cases

o arquivo Agibank/agi_tests.robot contém a suite de testes incluindo os seguintes cenários:

1
2

(descrever onde ficam os prints da tela, etc)

# Instalação
-------------

Uma dependência para executar os testes é ter o `Robot Framework` e
o `SeleniumLibrary` instalado e eles, por sua vez, exigem Python.
As instruções de instalação do Robot Framework cobrem ambas instalações do Robot e do Python,
A `SeleniumLibrary` tem suas próprias instruções de instalação.

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

The browser that is used is controlled by ``${BROWSER}`` variable defined in
`resource.robot`_ resource file. Firefox browser is used by default, but that
can be easily overridden from the command line::

    robot --variable BROWSER:Chrome login_tests
    robot --variable BROWSER:IE login_tests

Consult SeleniumLibrary_ documentation about supported browsers.

.. _Robot Framework: http://robotframework.org
.. _SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
.. _Python: http://python.org
.. _pip: http://pip-installer.org
.. _download: https://github.com/robotframework/WebDemo/archive/master.zip
.. _source code: https://github.com/robotframework/WebDemo.git
.. _valid_login.robot: https://github.com/robotframework/WebDemo/blob/master/login_tests/valid_login.robot
.. _invalid_login.robot: https://github.com/robotframework/WebDemo/blob/master/login_tests/invalid_login.robot
.. _gherkin_login.robot: https://github.com/robotframework/WebDemo/blob/master/login_tests/gherkin_login.robot
.. _resource.robot: https://github.com/robotframework/WebDemo/blob/master/login_tests/resource.robot
.. _report.html: http://robotframework.org/WebDemo/report.html
.. _log.html: http://robotframework.org/WebDemo/log.html
.. _Robot Framework User Guide: http://robotframework.org/robotframework/#user-guide

