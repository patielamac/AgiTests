*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    DateTime

*** Variables ***
${Browser}    chrome
${URL}    https://blogdoagi.com.br/
@{palavras_chave}    economia    poupança    monetário    rendimento



*** Keywords ***
Acessar portal e gerar pesquisa simples
    Open Browser        ${URL}    ${Browser}    pause_on_failure=true
    Maximize Browser Window
    Wait Until Page Contains Element    xpath://span[contains(text(), 'Pesquisar')]    None
    Sleep    3s
    Click Element    xpath://div[@class='ast-search-icon']
    Sleep    3s
    Wait Until Page Contains Element    xpath://span[contains(text(), 'Pesquisar')]    None
    Input Text    xpath=//input[@id='search-field']    economia
    Press Keys    xpath=//input[@id='search-field']    ENTER
    Sleep    10s
    Capture Page Screenshot
    Sleep    3s
    Close Browser


Acessar portal e gerar várias pesquisas em fila
    Open Browser        ${URL}    ${Browser}    pause_on_failure=true
    Maximize Browser Window    
    FOR    ${palavra}    IN    @{palavras_chave}
        Wait Until Page Contains Element    xpath://span[contains(text(), 'Pesquisar')]    5s    Wait_Error
        Click Element    xpath://div[@class='ast-search-icon']
        Sleep    1s
        Input Text    xpath=//input[@id='search-field']    ${palavra} 
        Press Keys    xpath=//input[@id='search-field']    ENTER               
        Sleep    5s
        Capture Page Screenshot
        Sleep    3s
    END
    
    
   
