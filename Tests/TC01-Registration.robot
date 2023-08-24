*** Settings ***
Documentation    Scenario for Registration 
Library    SeleniumLibrary
Resource    ../Resources/general.robot
Resource    ../Resources/registration.robot
Test Teardown    Close Browser

*** Test Cases ***
User Register to web Cermati
    User Open Browser
    User input email address
    User input phone number
    User input password and password confirmation
    User input first name and last name
    User Input city
    User click tnc
    User click daftar
    User reach next page
    User reach OTP page