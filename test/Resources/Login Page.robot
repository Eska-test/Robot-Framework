*** Settings ***
Library    SeleniumLibrary
Resource    Login Page UI.robot

*** Keywords ***
Go To Login Page
    [Documentation]    Przechodzi na główną stronę.
    Go To    ${start_url}

Click Login Button
    [Documentation]    Klika przycisk "Zaloguj"
    Click Element    ${login}

Enter Wrong Username
    Input Text    ${username}    ${wrong_username}

Enter Correct Username
    Input Text    ${username}    ${correct_username}

Enter Wrong Password
    Input Password    ${password}    ${wrong_password}

Enter Correct Password
    Input Password    ${password}    ${correct_password}

Verify Login Failed
    Wait Until Page Contains    Invalid login
#    Wait Until Element Is Visible    ${LOGIN_BOX}

Verify You Are Logged In
    Wait Until Page Contains    Registered users
    Location Should Be    https://demo.neontheme.com/