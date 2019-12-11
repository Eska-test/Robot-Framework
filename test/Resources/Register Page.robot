*** Settings ***
Library  Selenium2Library

*** Variables ***
${NEXT_STEP} =  css=#step-1 > div:nth-child(4) > button
${PHONE_NUMBER} =  id=phone
${BIRTH_DATE} =  id=birthdate
${FULL_NAME} =  id=name
${COMPLETE_REGISTRATION} =  css=#step-2 > div:nth-child(4) > button
${EMAIL} =  id=email
${USERNAME} =  id=username
${NAME} =  Szczepan
${USERNAME_INPUT} =  usertestowy
${NUMBER} =  0481111111
${DATE_OF_BIRTH} =  01012000
${EMAIL_INPUT} =  test@test.pl
${PASS} =  Abc@1k&df
${PASSWORD} =  id=password

*** Keywords ***

Go to register page
    go to  ${start url}

Click Next Step
    click element  ${next_step}

Verify Full Name error
    wait until element is enabled  css=#name-error

Input wrong phone number
    run keyword and continue on failure  input text  ${phone_number}  $dsa
    element should not contain  ${phone_number}  $dsa

Input wrong date of birth
    run keyword and continue on failure  input text  ${birth_date}  $dsa
    element should not contain  ${birth_date}  $dsa

Input wrong dates of birth
    input text  ${birth_date}  32121995
    textfield should contain  ${birth_date}  31/1m/yyyy
    input text  ${birth_date}  01131995
    textfield should contain  ${birth_date}  01/11/2099

Fill Full Name field
    input text  ${full_name}  user

Click Complete Registration
    sleep  1.5s
    wait until element is enabled  ${complete_registration}
    click element  ${complete_registration}

Verify Registration is complete
    wait until page contains  You have been successfully registered.

Verify Username error
    wait until element is enabled  css=#username-error

Verify E-mail error
    wait until element is enabled  css=#email-error

Verify Choose Password
    wait until element is enabled  css=#password-error

Input wrong e-mail
    wait until element is enabled  ${email}
    input text  ${email}  testtest
    click element  ${username}
    page should contain  Invalid E-mail.

Input Name into Full Name Field
    input text  ${full_name}  ${name}

Input Number into Phone Number field
    input text  ${phone_number}  ${number}

Input Date of Birth into Date of Birth field
    input text  ${birth_date}  ${date_of_birth}

Input Username into Username field
    wait until element is enabled  ${username}
    input text  ${username}  ${username_input}

Input Email into E-mail field
    input text  ${email}  ${email_input}

Input Password into Password field
    input password  ${password}  ${pass}
