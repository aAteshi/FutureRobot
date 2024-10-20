*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user register to future skill platform with ${email} and ${username} and ${password} and ${confirmpassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//a[text()="ลงชื่อสมัครใช้"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${email}
    CommonKeywords.Wait until element is ready then input text        name=username         ${username}
    CommonKeywords.Wait until element is ready then input text        name=password            ${password}
    CommonKeywords.Wait until element is ready then input text        name=password_confirm            ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]