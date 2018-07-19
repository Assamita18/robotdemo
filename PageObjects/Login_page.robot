*** Variables ***

${username_field}  id=userEmail
${password_field}  id=userPassword
${login_button}  id=loginButton
${errorelement}   xpath=/shtml/body/main/div/section/form/div[1]
${checkbox_rememberme}  id=rememberMe


*** Keywords ***

Input Username
    [Arguments]    ${username}
    Input Text    ${username_field}    ${username}

Input daPassword
    [Arguments]    ${password}
    Input Password    ${password_field}     ${password}

Submit Credentials
    Click Button    ${login_button}

Select Remember Me Checkbox
    Select Checkbox   ${checkbox_rememberme}
