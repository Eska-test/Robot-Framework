*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Go to page
     Go To    ${START_URL}

Start Test
    Set Selenium Speed    0.3s
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

End Test
    Sleep    5s
    Close Browser

