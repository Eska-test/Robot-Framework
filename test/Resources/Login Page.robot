*** Settings ***
Library  Selenium2Library

*** Variables ***
${LOGIN_IN} =  css=#form_login > div:nth-child(3) > button
${USERNAME} =  id=username
${CORRECT_USERNAME} =  demo
${WRONG_USERNAME} =  WrongUsername
${PASSWORD} =  id=password
${CORRECT_PASSWORD} =  demo
${WRONG_PASSWORD} =  WrongPassword

*** Keywords ***
Go to login page
    go to  ${start_url}

Click Login In button
    click element  ${login_in}

Enter wrong username
    input text  ${username}  ${wrong_username}

Enter correct username
    input text  ${username}  ${correct_username}

Enter wrong password
    input password  ${password}  ${wrong_password}

Enter correct password
    input password  ${password}  ${correct_password}

Verify login failed
    wait until page contains  Invalid login

Verify you are logged in
    wait until page contains  Registered users
    location should be  https://demo.neontheme.com/