*** Settings ***
Library  Selenium2Library


*** Keywords ***

Go to page
     go to ${START_URL}

Start Test
    set selenium speed  0.3s
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

End Test
    sleep  5s
    close browser

