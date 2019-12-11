*** Settings ***
Documentation  On register page verify register process and validations.

Resource  ../Resources/Register Page.robot
Resource  ../Resources/Common.robot
Test Setup  Start Test
Test Teardown  End Test

*** Variables ***
${BROWSER} =  chrome
${START URL} =  https://demo.neontheme.com/extra/register/

*** Test Cases ***
Check mandatory fields on the first page
    [Tags]  1
    Go to register page
    Click Next Step
    Verify Full Name error

Check Phone Number validation
    [Tags]  2
    Go to register page
    Input wrong phone number

Check Date of Birth validation
    [Tags]  3
    Go to register page
    Input wrong date of birth

Check second Date of Birth validation
    [Tags]  4
    Go to register page
    Input wrong dates of birth

Check mandatory fields on the second page
    [Tags]  5
    Go to register page
    Fill Full Name field
    Click Next Step
    Click Complete Registration
    Verify Username error
    Verify E-mail error
    Verify Choose Password

Check E-mail validation
    [Tags]  6
    Go to register page
    Fill Full Name field
    Click Next Step
    Input wrong e-mail

Register user properly
    [Tags]  7
    Go to register page
    Input Name into Full Name Field
    Input Number into Phone Number field
    Input Date of Birth into Date of Birth field
    Click Next Step
    Input Username into Username field
    Input Email into E-mail field
    Input Password into Password field
    Click Complete Registration
    Verify Registration is complete





