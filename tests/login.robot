*** Settings ***
Documentation     A test suite containing tests related to invalid login.

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser
Test Template     Login With Invalid Credentials Should Fail
Resource          ../EnvironmentConfiguration/resource.robot
Resource          ../PageObjects/Login_page.robot

*** Test Cases ***               USER NAME        PASSWORD
Invalid Username                 invalid          ${VALID PASSWORD}
Invalid Password                 ${VALID USER}    invalid
Invalid Username And Password    test          invalidpassword
#Empty Username                   ${EMPTY}         ${VALID PASSWORD}
#Empty Password                   ${VALID USER}    ${EMPTY}
#Empty Username And Password      ${EMPTY}         ${EMPTY}




*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}
    Select Remember Me Checkbox
    Input Username    ${username}
    Input daPassword    ${password}
    Submit Credentials
    Login Should Have Failed
    Capture Page Screenshot

Login Should Have Failed
    Element Should Be Visible    ${errorelement}
    Checkbox Should Be Selected   ${checkbox_rememberme}
