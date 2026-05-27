*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.saucedemo.com/
${BROWSER}    Edge

*** Test Cases ***

Successful Login
    Open Browser    ${URL}    ${BROWSER}    options=add_argument(--headless);add_argument(--no-sandbox);add_argument(--disable-dev-shm-usage)

    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce

    Click Button    id:login-button

    Wait Until Page Contains    Products

    Close Browser