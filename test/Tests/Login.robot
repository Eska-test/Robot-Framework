*** Settings ***
Documentation  On login page, verify login functionality.

Resource  ../Resources/Login Page.robot
Resource  ../Resources/Common.robot
Test Setup    Start Test
Test Teardown    End Test
#Suite Setup    Start Test
#Suite Teardown    End Test

*** Variables ***
${BROWSER} =  chrome
${START URL} =  https://demo.neontheme.com/extra/login/

*** Test Cases ***
Check mandatory fields on the login page
    [Tags]    1
    [Documentation]    Sprawdza pustą walidację.
    Go To Login Page
    Click Login Button

Try to log in with wrong username, and correct password
    [Tags]    2    wrong
    [Documentation]    Sprawdza niepoprawne dane.
    Go To Login Page
    Enter Wrong Username
    Enter Correct Password
    Click Login Button
    Verify Login Failed

Try to log in with wrong username, and wrong password
    [Tags]    3    wrong
    [Documentation]    Sprawdza niepoprawne dane.
    Go To Login Page
    Enter Wrong Username
    Enter Wrong Password
    Click Login Button
    Verify Login Failed

Try to log in with correct username, and wrong password
    [Tags]    4    wrong
    [Documentation]    Sprawdza niepoprawne dane.
    Go To Login Page
    Enter Correct Username
    Enter Wrong Password
    Click Login Button
    Verify Login Failed

Try to log in with correct username, and correct password
    [Tags]    5    correct
    [Documentation]    Sprawdza poprawne dane.
    Go To Login Page
    Enter Correct Username
    Enter Correct Password
    Click Login Button
    Verify You Are Logged In


