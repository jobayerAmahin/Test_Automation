*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://admin-demo.nopcommerce.com/
${browser}      chrome
*** Keywords ***
Opening browser
    open browser    ${url}      ${browser}
    maximize browser window
Closing browsers
    close all browsers
Loging into page
    go to    ${url}
inputting Username
    [Arguments]    ${username}
    input text    id:Email    ${username}
inputting password
    [Arguments]    ${password}
    input text    id:Password    ${password}
Clicking Login Button
    click element    xpath://html/body/div[6]/div/div/div/div/div[2]/div[1]/div/form/div[3]/button
Click LogOut button
    click link    Logout
Expected Error Message
    page should contain    Login was unsuccessful.
Expected Dashboard Page
    page should contain    Dashboard