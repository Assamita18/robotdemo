*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library

*** Variables ***
${SERVER}         localhost:3000
${BROWSER}        Chrome
${DELAY}          0
${VALID USER}     test@test.com
${VALID PASSWORD}    testtest
${LOGIN URL}      http://${SERVER}/#/login
${WELCOME URL}    http://${SERVER}
${ERROR URL}      http://${SERVER}/error.html


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    OWASP Juice Shop


Open Browser To Main Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Main Page Should Be Open

Main Page Should Be Open
    Title Should Be    OWASP Juice Shop
