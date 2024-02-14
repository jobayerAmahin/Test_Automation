*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}  https://google.com/
${browser}  chrome
*** Test Cases ***
retry
    launchBrowser
    input text    xpath://input[@id='input']    Amazon
    press keys    xpath://input[@id='input']    ENTER
    close all browsers
*** Keywords ***
launchBrowser
    open browser    ${url}      ${browser}
    maximize browser window