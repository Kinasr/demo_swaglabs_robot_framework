*** Variables ***
${usernameTextField}  id:user-name
${passwordTextField}  id:password
${loginButton}  id:login-button

*** Keywords ***
Navigate To Login Page
    Open Browser  ${baseUrl}  ${browser}
    Go To  ${baseUrl}

Valid Login
    Input Text  ${usernameTextField}  ${username}
    Input Text  ${passwordTextField}  ${password}
    Click Element  ${loginButton}

Login
    [Documentation]  Entering username and password then clicking on the login button.
    [Arguments]  ${lUsername}  ${lPassword}
    Input Text  ${usernameTextField}  ${lUsername}
    Input Text  ${passwordTextField}  ${lPassword}
    Click Element  ${loginButton}

Assert That This Is Login Page
    Element Should Be Visible  ${loginButton}

Assert Wrong coordinates
    Page Should Contain  Username and password do not match any user in this service

Assert Empty coordinates
    Page Should Contain  Username is required
