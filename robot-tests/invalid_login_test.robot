*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    Chrome

*** Test Cases ***

Invalid Login Shows Error
    Open Browser    ${URL}    ${BROWSER}    options=add_argument("--headless");add_argument("--no-sandbox")

    Input Text    id:user-name    standard_user
    Input Password    id:password    wrong_password

    Click button    id:login-button

    Wait Until Page Contains    Epic sadface
    Capture Page Screenshot    invalid-login-screenshot.png

    Close Browser

