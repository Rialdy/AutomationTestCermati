*** Settings ***
Documentation    Open Browser
Library    SeleniumLibrary

*** Variables ***
${url_cermati}    https://www.cermati.com/app/gabung 
${browser}    gc

*** Keywords ***
User Open Browser
    Open Browser    ${url_cermati}   ${browser}
    Maximize Browser Window