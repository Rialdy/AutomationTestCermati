*** Settings ***
Documentation    Registration Step Definition
Library    SeleniumLibrary
Library    ../Libraries/lib.py

*** Variables ***
${email}                      email
${handphone}                  mobilePhone
${password}                   password
${password_confirmation}      confirmPassword
${firstname}                  firstName    
${lastname}                   lastName
${city}                       cityAndProvince
${tnc}                        terms-and-condition
${daftar_button}              //button[@data-button-name='register-new']
${pilih_metode_verifikasi}    //h1[@class='header_2xOrt AppHeader_card__header-title__9bScY mx-auto text-color-gray-dark']
${kirim_via_sms}              //button[@data-button-name='send-otp-sms']
${kode_otp_terkirim}          //h2[@class='OtpHeader_form-header__t5f1Q']

*** Keywords ***
User input email address
    Wait Until Element Is Enabled    ${email}
    ${random_char}=    randChar
    ${random_email}=    Set Variable    ${random_char}@test.com
    Input Text    ${email}    ${random_email}

User input phone number
    ${random_number}=    randNum
    ${random_phone_number}=    Set Variable    0812${random_number}
    Input Text    ${handphone}    ${random_phone_number}

User input password and password confirmation 
    Input Text    ${password}    Qwerty1!
    Input Text    ${password_confirmation}    Qwerty1!

User input first name and last name
    Scroll Element Into View    ${lastname}
    Input Text    ${firstname}    Test
    Input Text    ${lastname}    Account

User Input city
    Scroll Element Into View    ${daftar_button}
    Input Text    ${city}    KOTA YOGYAKARTA

User click tnc
    Select Checkbox   ${tnc}
    Sleep    5s

User click daftar
    Click Element    ${daftar_button}

User reach next page
    Wait Until Element Is Enabled    ${kirim_via_sms}
    Click Element    ${kirim_via_sms}

User reach OTP page 
    Wait Until Element Contains    ${kode_otp_terkirim}    Kode OTP Terkirim
    Sleep    3s
    
    