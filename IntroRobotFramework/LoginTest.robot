*** Settings ***
Library    SeleniumLibrary    



*** Test Cases ***
loginTestRobot
    [Documentation]  ceci est un test de login/logout
    Open Browser  ${URL}    ${Browser}
    Maximize Browser Window
    Input Text   id="txtUsername    &{dataLogin}[username]                            #@{login}[0]
    Input Text   id="txtPassword    &{dataLogin}[password]                            #@{login}[1]
    Click Button    id=btnLogin  
    Click Element    id=welcome
    Set Browser Implicit Wait    5
    Click Element    link=Logout
    Log    Ceci est un test execute par %{username} dans %{os}   
    Log    Ceci est juste un simple test    
    Log    Fin de test    
    
*** Variables ***
${URL}    https opensource demo.orangehrmlive.com/index.php/auth/login gc
${Browser}    gc
@{login}    Admin    admin123
&{dataLogin}    username=Admin    password=admin123
                    