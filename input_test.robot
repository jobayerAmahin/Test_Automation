*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.saucedemo.com/
*** Test Cases ***
VerifyLoginPage
    open browser    ${url}  ${browser}
    maximize browser window
    ${"UserName"}  set variable    xpath://input[@id='user-name']
    input text  ${"UserName"}  problem_user
    press keys    xpath://input[@id='user-name']   TAB
    ${"Password"}  set variable    xpath://input[@id='password']
    input text  ${"Password"}  secret_saucee
    press keys    xpath://input[@id='password']  BACKSPACE
    sleep    15
    press keys    xpath://input[@id='login-button']   ENTER
    close browser
    #click button    xpath://html/body/ntp-app//div/div[2]/ntp-realbox//div/cr-realbox-dropdown//div/div/div/cr-realbox-match[1]//div[1]/cr-realbox-icon//div/div[2]
*** Keywords ***
