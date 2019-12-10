*** Settings ***
Documentation  On login page, verify login functionality.

Resource  ../Resources/Login Page.robot
Resource  ../Resources/Common.robot
Test Setup  Start Test
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${START URL} =  https://demo.neontheme.com/extra/login/

*** Test Cases ***
Check mandatory fields on the login page
    [Tags]  1
    Go to login page
    Click Login In button

Try to log in with wrong username, and correct password
    [Tags]  2
    Go to login page
    Enter wrong username
    Enter correct password
    Click Login In button

Try to log in with wrong username, and wrong password
    [Tags]  3
    Go to login page
    Enter wrong username
    Enter wrong password
    Click Login In button

Try to log in with correct username, and wrong password
    [Tags]  4
    Go to login page
    Enter correct username
    Enter wrong password
    Click Login In button

Try to log in with correct username, and correct password
    [Tags]  5
    Go to login page
    Enter correct username
    Enter correct password
    Click Login In button
    Verify you are logged in


