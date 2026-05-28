# Invalid Login Test

## Test Objectives
Verify that invalid credentials show an error message

## Steps
1. Open SauceDemo
2. Enter username "standard_user" with wrong password
3. Click Login button

## Expected Result
Error message is displayed

## Actual Result
Error message: "Epic sadface: Username and password do not match any user in this service" was displayed as expected. No bug found. 

## Status
PASS

## Automation
Executed with Robot Framework + SeleniumLibrary