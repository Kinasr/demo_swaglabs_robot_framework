*** Settings ***
Library  SeleniumLibrary

Resource  ../resources.robot
Resource  ../pages/login_page.robot
Resource  ../pages/home_page.robot


Suite Setup  Open Browser  ${baseUrl}  ${browser}
Test Setup  Go To  ${baseUrl}
Suite Teardown  Close Browser


*** Test Cases ***
Login with valid coordinates
    Login  ${username}  ${password}
    Assert That This Is Home Page

Login with invalid username
    Login  wrong username  ${password}
    Assert Wrong coordinates

Login with invalid password
    Login  ${username}  wrong password
    Assert Wrong coordinates

Login with invalid username and password
    Login  wrong username  wrong passwrd
    Assert Wrong coordinates

Login with empty username and password
    Login  ${EMPTY}  ${EMPTY}
    Assert Empty coordinates