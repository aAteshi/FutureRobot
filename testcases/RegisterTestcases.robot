*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/HomePageKeywords.robot
Resource        ../keywords/RegisterPageKeywords.robot
Variables       ../resources/config/config.yaml
Variables        ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
As a user, I want to register with my credential
    When user register to future skill platform with ${email_register} and ${username_register} and ${password_register} and ${confirm_password_register}
