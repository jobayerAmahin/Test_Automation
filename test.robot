*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.youtube.com/watch?v=65OPFmEgCbM&list=PLx4LEkEdFArgrdD_lvXe_hYBy8zM0Sp3b
${browser}  chrome
*** Test Cases ***
Google
    insidegoogle
*** Keywords ***
insidegoogle
    open browser    ${url}     ${browser}
    maximize browser window
    sleep    10
    close browser

