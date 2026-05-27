*** Settings ***
Library    BuiltIn

*** Test Cases ***
Smoke Test
    Log    Robot Framework toimii
    Should Be True    ${True}
